
SHELL = /bin/sh

#### Start of system configuration section. ####

srcdir = .
topdir = /Users/abalonperin/.rvm/rubies/ruby-1.8.7-p374/lib/ruby/1.8/i686-darwin13.0.2
hdrdir = $(topdir)
VPATH = $(srcdir):$(topdir):$(hdrdir)
exec_prefix = $(prefix)
prefix = $(DESTDIR)/Users/abalonperin/.rvm/rubies/ruby-1.8.7-p374
vendorarchdir = $(vendorlibdir)/$(sitearch)
docdir = $(datarootdir)/doc/$(PACKAGE)
libdir = $(exec_prefix)/lib
sitedir = $(libdir)/ruby/site_ruby
includedir = $(prefix)/include
dvidir = $(docdir)
sbindir = $(exec_prefix)/sbin
mandir = $(datarootdir)/man
sitearchdir = $(sitelibdir)/$(sitearch)
sitelibdir = $(sitedir)/$(ruby_version)
htmldir = $(docdir)
localstatedir = $(prefix)/var
vendorlibdir = $(vendordir)/$(ruby_version)
pdfdir = $(docdir)
psdir = $(docdir)
bindir = $(exec_prefix)/bin
sharedstatedir = $(prefix)/com
archdir = $(rubylibdir)/$(arch)
localedir = $(datarootdir)/locale
rubylibdir = $(libdir)/ruby/$(ruby_version)
sysconfdir = $(prefix)/etc
libexecdir = $(exec_prefix)/libexec
infodir = $(datarootdir)/info
vendordir = $(libdir)/ruby/vendor_ruby
oldincludedir = $(DESTDIR)/usr/include
datadir = $(datarootdir)
datarootdir = $(prefix)/share

CC = /usr/local/bin/gcc-4.2
LIBRUBY = $(LIBRUBY_SO)
LIBRUBY_A = lib$(RUBY_SO_NAME)-static.a
LIBRUBYARG_SHARED = -l$(RUBY_SO_NAME)
LIBRUBYARG_STATIC = -l$(RUBY_SO_NAME)-static

RUBY_EXTCONF_H = extconf.h
CFLAGS   =  -fno-common  -DMAGICKCORE_HDRI_ENABLE=0 -DMAGICKCORE_QUANTUM_DEPTH=16 -I/usr/local/Cellar/imagemagick/6.8.8-9/include/ImageMagick-6  
INCFLAGS = -I. -I. -I/Users/abalonperin/.rvm/rubies/ruby-1.8.7-p374/lib/ruby/1.8/i686-darwin13.0.2 -I.
DEFS     = 
CPPFLAGS = -DRUBY_EXTCONF_H=\"$(RUBY_EXTCONF_H)\"  -DMAGICKCORE_HDRI_ENABLE=0 -DMAGICKCORE_QUANTUM_DEPTH=16 -I/usr/local/Cellar/imagemagick/6.8.8-9/include/ImageMagick-6 
CXXFLAGS = $(CFLAGS) 
ldflags  =  -L/usr/local/Cellar/imagemagick/6.8.8-9/lib -lMagickCore-6.Q16 
dldflags = 
archflag = 
DLDFLAGS = $(ldflags) $(dldflags) $(archflag)
LDSHARED = cc -dynamic -bundle -undefined suppress -flat_namespace
AR = ar
EXEEXT = 

RUBY_INSTALL_NAME = ruby
RUBY_SO_NAME = ruby
arch = i686-darwin13.0.2
sitearch = i686-darwin13.0.2
ruby_version = 1.8
ruby = /Users/abalonperin/.rvm/rubies/ruby-1.8.7-p374/bin/ruby
RUBY = $(ruby)
RM = rm -f
MAKEDIRS = mkdir -p
INSTALL = /usr/bin/install -c
INSTALL_PROG = $(INSTALL) -m 0755
INSTALL_DATA = $(INSTALL) -m 644
COPY = cp

#### End of system configuration section. ####

preload = 

libpath = . $(libdir)
LIBPATH =  -L. -L$(libdir)
DEFFILE = 

CLEANFILES = mkmf.log
DISTCLEANFILES = 

extout = 
extout_prefix = 
target_prefix = 
LOCAL_LIBS =  -L/usr/local/Cellar/imagemagick/6.8.8-9/lib -lMagickCore-6.Q16 
LIBS = $(LIBRUBYARG_SHARED)  -ldl -lobjc  
SRCS = rmagick.c rmdraw.c rmenum.c rmfill.c rmilist.c rmimage.c rminfo.c rmmain.c rmmontage.c rmpixel.c rmstruct.c rmutil.c
OBJS = rmagick.o rmdraw.o rmenum.o rmfill.o rmilist.o rmimage.o rminfo.o rmmain.o rmmontage.o rmpixel.o rmstruct.o rmutil.o
TARGET = RMagick2
DLLIB = $(TARGET).bundle
EXTSTATIC = 
STATIC_LIB = 

BINDIR        = $(bindir)
RUBYCOMMONDIR = $(sitedir)$(target_prefix)
RUBYLIBDIR = /Users/abalonperin/dotfiles/rvm/rvm/gems/ruby-1.8.7-p374/gems/rmagick-2.13.2/lib$(target_prefix)
RUBYARCHDIR = /Users/abalonperin/dotfiles/rvm/rvm/gems/ruby-1.8.7-p374/gems/rmagick-2.13.2/lib$(target_prefix)

TARGET_SO     = $(DLLIB)
CLEANLIBS     = $(TARGET).bundle $(TARGET).il? $(TARGET).tds $(TARGET).map
CLEANOBJS     = *.o *.a *.s[ol] *.pdb *.exp *.bak

all:		$(DLLIB)
static:		$(STATIC_LIB)

clean:
		@-$(RM) $(CLEANLIBS) $(CLEANOBJS) $(CLEANFILES)

distclean:	clean
		@-$(RM) Makefile $(RUBY_EXTCONF_H) conftest.* mkmf.log
		@-$(RM) core ruby$(EXEEXT) *~ $(DISTCLEANFILES)

realclean:	distclean
install: install-so install-rb

install-so: $(RUBYARCHDIR)
install-so: $(RUBYARCHDIR)/$(DLLIB)
$(RUBYARCHDIR)/$(DLLIB): $(DLLIB)
	$(INSTALL_PROG) $(DLLIB) $(RUBYARCHDIR)
install-rb: pre-install-rb install-rb-default
install-rb-default: pre-install-rb-default
pre-install-rb: Makefile
pre-install-rb-default: Makefile
$(RUBYARCHDIR):
	$(MAKEDIRS) $@

site-install: site-install-so site-install-rb
site-install-so: install-so
site-install-rb: install-rb

.SUFFIXES: .c .m .cc .cxx .cpp .C .o

.cc.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.cxx.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.cpp.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.C.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.c.o:
	$(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) -c $<

$(DLLIB): $(OBJS) Makefile
	@-$(RM) $@
	$(LDSHARED) -o $@ $(OBJS) $(LIBPATH) $(DLDFLAGS) $(LOCAL_LIBS) $(LIBS)



$(OBJS): ruby.h defines.h Makefile rmagick.h $(RUBY_EXTCONF_H)
