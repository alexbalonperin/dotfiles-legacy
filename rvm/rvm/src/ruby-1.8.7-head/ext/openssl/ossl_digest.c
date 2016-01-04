/*
 * $Id$
 * 'OpenSSL for Ruby' project
 * Copyright (C) 2001-2002  Michal Rokos <m.rokos@sh.cvut.cz>
 * All rights reserved.
 */
/*
 * This program is licenced under the same licence as Ruby.
 * (See the file 'LICENCE'.)
 */
#include "ossl.h"

#define GetDigest(obj, ctx) do { \
    Data_Get_Struct(obj, EVP_MD_CTX, ctx); \
    if (!ctx) { \
	ossl_raise(rb_eRuntimeError, "Digest CTX wasn't initialized!"); \
    } \
} while (0)
#define SafeGetDigest(obj, ctx) do { \
    OSSL_Check_Kind(obj, cDigest); \
    GetDigest(obj, ctx); \
} while (0)

/*
 * Classes
 */
VALUE cDigest;
VALUE eDigestError;

static VALUE ossl_digest_alloc(VALUE klass);

/*
 * Public
 */
const EVP_MD *
GetDigestPtr(VALUE obj)
{
    const EVP_MD *md;

    if (TYPE(obj) == T_STRING) {
    	const char *name = STR2CSTR(obj);

        md = EVP_get_digestbyname(name);
        if (!md)
            ossl_raise(rb_eRuntimeError, "Unsupported digest algorithm (%s).", name);
    } else {
        EVP_MD_CTX *ctx;

        SafeGetDigest(obj, ctx);

        md = EVP_MD_CTX_md(ctx);
    }

    return md;
}

VALUE
ossl_digest_new(const EVP_MD *md)
{  
    VALUE ret;
    EVP_MD_CTX *ctx;

    ret = ossl_digest_alloc(cDigest);
    GetDigest(ret, ctx);
    if (EVP_DigestInit_ex(ctx, md, NULL) != 1) {
	ossl_raise(eDigestError, "Digest initialization failed.");
    }
   
    return ret;
}

/*
 * Private
 */
static VALUE
ossl_digest_alloc(VALUE klass)
{
    EVP_MD_CTX *ctx;
    VALUE obj;

    ctx = EVP_MD_CTX_create();
    if (ctx == NULL)
	ossl_raise(rb_eRuntimeError, "EVP_MD_CTX_create() failed");
    obj = Data_Wrap_Struct(klass, 0, EVP_MD_CTX_destroy, ctx);

    return obj;
}

VALUE ossl_digest_update(VALUE, VALUE);

/*
 *  call-seq:
 *     Digest.new(string) -> digest
 *
 */
static VALUE
ossl_digest_initialize(int argc, VALUE *argv, VALUE self)
{
    EVP_MD_CTX *ctx;
    const EVP_MD *md;
    char *name;
    VALUE type, data;

    rb_scan_args(argc, argv, "11", &type, &data);
    md = GetDigestPtr(type);
    if (!NIL_P(data)) StringValue(data);

    GetDigest(self, ctx);
    if (EVP_DigestInit_ex(ctx, md, NULL) != 1) {
	ossl_raise(eDigestError, "Digest initialization failed.");
    }
    
    if (!NIL_P(data)) return ossl_digest_update(self, data);
    return self;
}

static VALUE
ossl_digest_copy(VALUE self, VALUE other)
{
    EVP_MD_CTX *ctx1, *ctx2;
    
    rb_check_frozen(self);
    if (self == other) return self;

    GetDigest(self, ctx1);
    SafeGetDigest(other, ctx2);

    if (!EVP_MD_CTX_copy(ctx1, ctx2)) {
	ossl_raise(eDigestError, NULL);
    }
    return self;
}

/*
 *  call-seq:
 *     digest.reset -> self
 *
 */
static VALUE
ossl_digest_reset(VALUE self)
{
    EVP_MD_CTX *ctx;

    GetDigest(self, ctx);
    if (EVP_DigestInit_ex(ctx, EVP_MD_CTX_md(ctx), NULL) != 1) {
	ossl_raise(eDigestError, "Digest initialization failed.");
    }

    return self;
}

/*
 *  call-seq:
 *     digest.update(string) -> aString
 *
 */
VALUE
ossl_digest_update(VALUE self, VALUE data)
{
    EVP_MD_CTX *ctx;

    StringValue(data);
    GetDigest(self, ctx);
    EVP_DigestUpdate(ctx, RSTRING_PTR(data), RSTRING_LEN(data));

    return self;
}

/*
 *  call-seq:
 *      digest.finish -> aString
 *
 */
static VALUE
ossl_digest_finish(int argc, VALUE *argv, VALUE self)
{
    EVP_MD_CTX *ctx;
    VALUE str;

    rb_scan_args(argc, argv, "01", &str);

    GetDigest(self, ctx);

    if (NIL_P(str)) {
        str = rb_str_new(NULL, EVP_MD_CTX_size(ctx));
    } else {
        StringValue(str);
        rb_str_resize(str, EVP_MD_CTX_size(ctx));
    }

    EVP_DigestFinal_ex(ctx, RSTRING_PTR(str), NULL);

    return str;
}

/*
 *  call-seq:
 *      digest.name -> string
 *
 */
static VALUE
ossl_digest_name(VALUE self)
{
    EVP_MD_CTX *ctx;

    GetDigest(self, ctx);

    return rb_str_new2(EVP_MD_name(EVP_MD_CTX_md(ctx)));
}

/*
 *  call-seq:
 *      digest.digest_size -> integer
 *
 *  Returns the output size of the digest.
 */
static VALUE
ossl_digest_size(VALUE self)
{
    EVP_MD_CTX *ctx;

    GetDigest(self, ctx);

    return INT2NUM(EVP_MD_CTX_size(ctx));
}

static VALUE
ossl_digest_block_length(VALUE self)
{
    EVP_MD_CTX *ctx;

    GetDigest(self, ctx);

    return INT2NUM(EVP_MD_CTX_block_size(ctx));
}

/*
 * INIT
 */
void
Init_ossl_digest()
{
    rb_require("openssl");
    rb_require("digest");

#if 0 /* let rdoc know about mOSSL */
    mOSSL = rb_define_module("OpenSSL");
#endif

    cDigest = rb_define_class_under(mOSSL, "Digest", rb_path2class("Digest::Class"));
    eDigestError = rb_define_class_under(cDigest, "DigestError", eOSSLError);
	
    rb_define_alloc_func(cDigest, ossl_digest_alloc);

    rb_define_method(cDigest, "initialize", ossl_digest_initialize, -1);
    rb_define_copy_func(cDigest, ossl_digest_copy);
    rb_define_method(cDigest, "reset", ossl_digest_reset, 0);
    rb_define_method(cDigest, "update", ossl_digest_update, 1);
    rb_define_alias(cDigest, "<<", "update");
    rb_define_private_method(cDigest, "finish", ossl_digest_finish, -1);
    rb_define_method(cDigest, "digest_length", ossl_digest_size, 0);
    rb_define_method(cDigest, "block_length", ossl_digest_block_length, 0);

    rb_define_method(cDigest, "name", ossl_digest_name, 0);
}