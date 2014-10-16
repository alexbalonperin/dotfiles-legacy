
SHELL = /bin/sh

#### Start of system configuration section. ####
top_srcdir = $(topdir)/.
srcdir = $(top_srcdir)/ext/win32ole
topdir = ../..
hdrdir = $(top_srcdir)
VPATH = $(srcdir):$(topdir):$(hdrdir)
RUBYLIB = -
RUBYOPT = -rpurelib.rb
prefix = $(DESTDIR)/Users/abalonperin/dotfiles/rvm/rvm/rubies/ruby-1.8.7-head
exec_prefix = $(prefix)
dvidir = $(docdir)
pdfdir = $(docdir)
psdir = $(docdir)
sharedstatedir = $(prefix)/com
mandir = $(datarootdir)/man
localstatedir = $(prefix)/var
oldincludedir = $(DESTDIR)/usr/include
sitelibdir = $(sitedir)/$(ruby_version)
libdir = $(exec_prefix)/lib
bindir = $(exec_prefix)/bin
sbindir = $(exec_prefix)/sbin
docdir = $(datarootdir)/doc/$(PACKAGE)
sysconfdir = $(prefix)/etc
htmldir = $(docdir)
sitedir = $(libdir)/ruby/site_ruby
localedir = $(datarootdir)/locale
includedir = $(prefix)/include
datarootdir = $(prefix)/share
vendorarchdir = $(vendorlibdir)/$(sitearch)
libexecdir = $(exec_prefix)/libexec
sitearchdir = $(sitelibdir)/$(sitearch)
datadir = $(datarootdir)
archdir = $(rubylibdir)/$(arch)
vendorlibdir = $(vendordir)/$(ruby_version)
rubylibdir = $(libdir)/ruby/$(ruby_version)
infodir = $(datarootdir)/info
vendordir = $(libdir)/ruby/vendor_ruby

CC = /usr/local/bin/gcc-4.2
LIBRUBY = $(LIBRUBY_SO)
LIBRUBY_A = lib$(RUBY_SO_NAME)-static.a
LIBRUBYARG_SHARED = -l$(RUBY_SO_NAME)
LIBRUBYARG_STATIC = -l$(RUBY_SO_NAME)-static

RUBY_EXTCONF_H = 
CFLAGS   =  -fno-common -O3 -I/usr/local/opt/libyaml/include -I/usr/local/opt/readline/include -I/usr/local/opt/libksba/include -I/usr/local/opt/openssl098/include  -fno-common -pipe -fno-common $(cflags) 
INCFLAGS = -I. -I../.. -I../../. -I../.././ext/win32ole
DEFS     = 
CPPFLAGS =   -D_XOPEN_SOURCE -D_DARWIN_C_SOURCE  
CXXFLAGS = $(CFLAGS) 
ldflags  = -L. -L/usr/local/opt/libyaml/lib -L/usr/local/opt/readline/lib -L/usr/local/opt/libksba/lib -L/usr/local/opt/openssl098/lib
dldflags = 
archflag = 
DLDFLAGS = $(ldflags) $(dldflags) $(archflag)
LDSHARED = cc -dynamic -bundle -undefined suppress -flat_namespace
AR = ar
EXEEXT = 

RUBY_INSTALL_NAME = ruby
RUBY_SO_NAME = ruby
arch = i686-darwin13.3.0
sitearch = i686-darwin13.3.0
ruby_version = 1.8
ruby = $(topdir)/miniruby -I'$(topdir)' -I'$(top_srcdir)/lib' -I'$(extout)/$(arch)' -I'$(extout)/common' -I./- -I'$(top_srcdir)/ext' -rpurelib.rb
RUBY = $(ruby)
RM = rm -f
MAKEDIRS = mkdir -p
INSTALL = /usr/bin/install -c
INSTALL_PROG = $(INSTALL) -m 0755
INSTALL_DATA = $(INSTALL) -m 644
COPY = cp

#### End of system configuration section. ####

preload = 
CLEANFILES = mkmf.log
DISTCLEANFILES = 

all install static install-so install-rb: Makefile


clean:
		@-$(RM) $(CLEANLIBS) $(CLEANOBJS) $(CLEANFILES)

distclean:	clean
		@-$(RM) Makefile $(RUBY_EXTCONF_H) conftest.* mkmf.log
		@-$(RM) core ruby$(EXEEXT) *~ $(DISTCLEANFILES)

realclean:	distclean
