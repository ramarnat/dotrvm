
SHELL = /bin/sh

# V=0 quiet, V=1 verbose.  other values don't work.
V = 0
Q1 = $(V:1=)
Q = $(Q1:0=@)
n=$(NULLCMD)
ECHO1 = $(V:1=@$n)
ECHO = $(ECHO1:0=@echo)

#### Start of system configuration section. ####
top_srcdir = $(topdir)/.
srcdir = $(top_srcdir)/ext/syck
topdir = ../..
hdrdir = $(top_srcdir)/include
arch_hdrdir = $(extout)/include/$(arch)
VPATH = $(srcdir):$(arch_hdrdir)/ruby:$(hdrdir)/ruby
RUBYLIB =
RUBYOPT = -
prefix = $(DESTDIR)/root/.rvm/rubies/ruby-1.9.3-p125
rubylibprefix = $(libdir)/$(RUBY_BASE_NAME)
exec_prefix = $(prefix)
vendorhdrdir = $(rubyhdrdir)/vendor_ruby
sitehdrdir = $(rubyhdrdir)/site_ruby
rubyhdrdir = $(includedir)/$(RUBY_BASE_NAME)-$(ruby_version)
vendordir = $(rubylibprefix)/vendor_ruby
sitedir = $(rubylibprefix)/site_ruby
ridir = $(datarootdir)/$(RI_BASE_NAME)
mandir = $(datarootdir)/man
localedir = $(datarootdir)/locale
libdir = $(exec_prefix)/lib
psdir = $(docdir)
pdfdir = $(docdir)
dvidir = $(docdir)
htmldir = $(docdir)
infodir = $(datarootdir)/info
docdir = $(datarootdir)/doc/$(PACKAGE)
oldincludedir = $(DESTDIR)/usr/include
includedir = $(prefix)/include
localstatedir = $(prefix)/var
sharedstatedir = $(prefix)/com
sysconfdir = $(prefix)/etc
datadir = $(datarootdir)
datarootdir = $(prefix)/share
libexecdir = $(exec_prefix)/libexec
sbindir = $(exec_prefix)/sbin
bindir = $(exec_prefix)/bin
rubylibdir = $(rubylibprefix)/$(ruby_version)
archdir = $(rubylibdir)/$(arch)
sitelibdir = $(sitedir)/$(ruby_version)
sitearchdir = $(sitelibdir)/$(sitearch)
vendorlibdir = $(vendordir)/$(ruby_version)
vendorarchdir = $(vendorlibdir)/$(sitearch)

NULLCMD = :

CC = gcc
CXX = g++
LIBRUBY = $(LIBRUBY_SO)
LIBRUBY_A = lib$(RUBY_SO_NAME)-static.a
LIBRUBYARG_SHARED = -Wl,-R -Wl,$(libdir) -L$(libdir) -l$(RUBY_SO_NAME)
LIBRUBYARG_STATIC = -Wl,-R -Wl,$(libdir) -L$(libdir) -l$(RUBY_SO_NAME)-static
OUTFLAG = -o 
COUTFLAG = -o 

RUBY_EXTCONF_H = extconf.h
cflags   =  $(optflags) $(debugflags) $(warnflags)
optflags = -O3
debugflags = -ggdb
warnflags = -Wextra -Wno-unused-parameter -Wno-parentheses -Wno-long-long -Wno-missing-field-initializers -Wpointer-arith -Wwrite-strings -Wdeclaration-after-statement -Wimplicit-function-declaration
CFLAGS   = -fPIC $(cflags)  -fPIC $(ARCH_FLAG)
INCFLAGS = -I. -I$(arch_hdrdir) -I$(hdrdir) -I$(srcdir)
DEFS     = -D_FILE_OFFSET_BITS=64
CPPFLAGS = -DRUBY_EXTCONF_H=\"$(RUBY_EXTCONF_H)\" -I/root/.rvm/usr/include  $(DEFS) $(cppflags)
CXXFLAGS = $(CFLAGS) $(cxxflags)
ldflags  = -L.  -rdynamic -Wl,-export-dynamic
dldflags = 
ARCH_FLAG = 
DLDFLAGS = $(ldflags) $(dldflags) $(ARCH_FLAG)
LDSHARED = $(CC) -shared
LDSHAREDXX = $(CXX) -shared
AR = ar
EXEEXT = 

RUBY_BASE_NAME = ruby
RUBY_INSTALL_NAME = ruby
RUBY_SO_NAME = ruby
arch = i686-linux
sitearch = $(arch)
ruby_version = 1.9.1
ruby = $(topdir)/miniruby -I'$(topdir)' -I'$(top_srcdir)/lib' -I'$(extout)/$(arch)' -I'$(extout)/common'
RUBY = $(ruby)
RM = rm -f
RM_RF = $(RUBY) -run -e rm -- -rf
RMDIRS = rmdir --ignore-fail-on-non-empty -p
MAKEDIRS = /bin/mkdir -p
INSTALL = /usr/bin/install -c
INSTALL_PROG = $(INSTALL) -m 0755
INSTALL_DATA = $(INSTALL) -m 644
COPY = cp

#### End of system configuration section. ####

preload = 

libpath = . $(topdir) /root/.rvm/usr/lib
LIBPATH =  -L. -L$(topdir) -L/root/.rvm/usr/lib -Wl,-R/root/.rvm/usr/lib
DEFFILE = 

CLEANFILES = mkmf.log
DISTCLEANFILES = 
DISTCLEANDIRS = 

extout = $(topdir)/.ext
extout_prefix = $(extout)$(target_prefix)/
target_prefix = 
LOCAL_LIBS = 
LIBS = $(LIBRUBYARG_SHARED)  -lpthread -lrt -ldl -lcrypt -lm   -lc
SRCS = rubyext.c syck.c handler.c yaml2byte.c gram.c token.c emitter.c bytecode.c implicit.c node.c
OBJS = rubyext.o syck.o handler.o yaml2byte.o gram.o token.o emitter.o bytecode.o implicit.o node.o
TARGET = syck
DLLIB = $(TARGET).so
EXTSTATIC = 
STATIC_LIB = 

BINDIR        = $(extout)/bin
RUBYCOMMONDIR = $(extout)/common
RUBYLIBDIR    = $(RUBYCOMMONDIR)$(target_prefix)
RUBYARCHDIR   = $(extout)/$(arch)$(target_prefix)
HDRDIR        = $(extout)/include/ruby$(target_prefix)
ARCHHDRDIR    = $(extout)/include/$(arch)/ruby$(target_prefix)

TARGET_SO     = $(RUBYARCHDIR)/$(DLLIB)
CLEANLIBS     = $(RUBYARCHDIR)/$(TARGET).so 
CLEANOBJS     = *.o  *.bak

all:    install
static: $(STATIC_LIB) install-rb
.PHONY: all install static install-so install-rb
.PHONY: clean clean-so clean-rb

clean-rb-default::
clean-rb::
clean-so::
clean: clean-so clean-rb-default clean-rb
		@-$(RM) $(CLEANLIBS) $(CLEANOBJS) $(CLEANFILES)

distclean-rb-default::
distclean-rb::
distclean-so::
distclean: clean distclean-so distclean-rb-default distclean-rb
		@-$(RM) Makefile $(RUBY_EXTCONF_H) conftest.* mkmf.log
		@-$(RM) core ruby$(EXEEXT) *~ $(DISTCLEANFILES)
		@-$(RMDIRS) $(DISTCLEANDIRS) 2> /dev/null || true

realclean: distclean
install: install-so install-rb

install-so: $(RUBYARCHDIR)
install-so: $(RUBYARCHDIR)/$(DLLIB)
clean-so::
	@-$(RM) $(RUBYARCHDIR)/$(DLLIB)
	@-$(RMDIRS) $(RUBYARCHDIR) 2> /dev/null || true
install-rb: pre-install-rb install-rb-default
install-rb-default: pre-install-rb-default
pre-install-rb: Makefile
pre-install-rb-default: Makefile
pre-install-rb-default: $(RUBYLIBDIR)/syck
install-rb-default: $(RUBYLIBDIR)/syck/stream.rb $(RUBYLIBDIR)/syck
$(RUBYLIBDIR)/syck/stream.rb: $(srcdir)/lib/syck/stream.rb
	$(Q) $(COPY) $(srcdir)/lib/syck/stream.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/syck/stream.rb
install-rb-default: $(RUBYLIBDIR)/syck/basenode.rb $(RUBYLIBDIR)/syck
$(RUBYLIBDIR)/syck/basenode.rb: $(srcdir)/lib/syck/basenode.rb
	$(Q) $(COPY) $(srcdir)/lib/syck/basenode.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/syck/basenode.rb
install-rb-default: $(RUBYLIBDIR)/syck/tag.rb $(RUBYLIBDIR)/syck
$(RUBYLIBDIR)/syck/tag.rb: $(srcdir)/lib/syck/tag.rb
	$(Q) $(COPY) $(srcdir)/lib/syck/tag.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/syck/tag.rb
install-rb-default: $(RUBYLIBDIR)/syck/yamlnode.rb $(RUBYLIBDIR)/syck
$(RUBYLIBDIR)/syck/yamlnode.rb: $(srcdir)/lib/syck/yamlnode.rb
	$(Q) $(COPY) $(srcdir)/lib/syck/yamlnode.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/syck/yamlnode.rb
install-rb-default: $(RUBYLIBDIR)/syck/rubytypes.rb $(RUBYLIBDIR)/syck
$(RUBYLIBDIR)/syck/rubytypes.rb: $(srcdir)/lib/syck/rubytypes.rb
	$(Q) $(COPY) $(srcdir)/lib/syck/rubytypes.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/syck/rubytypes.rb
install-rb-default: $(RUBYLIBDIR)/syck/loader.rb $(RUBYLIBDIR)/syck
$(RUBYLIBDIR)/syck/loader.rb: $(srcdir)/lib/syck/loader.rb
	$(Q) $(COPY) $(srcdir)/lib/syck/loader.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/syck/loader.rb
install-rb-default: $(RUBYLIBDIR)/syck/ypath.rb $(RUBYLIBDIR)/syck
$(RUBYLIBDIR)/syck/ypath.rb: $(srcdir)/lib/syck/ypath.rb
	$(Q) $(COPY) $(srcdir)/lib/syck/ypath.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/syck/ypath.rb
install-rb-default: $(RUBYLIBDIR)/syck/baseemitter.rb $(RUBYLIBDIR)/syck
$(RUBYLIBDIR)/syck/baseemitter.rb: $(srcdir)/lib/syck/baseemitter.rb
	$(Q) $(COPY) $(srcdir)/lib/syck/baseemitter.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/syck/baseemitter.rb
install-rb-default: $(RUBYLIBDIR)/syck/syck.rb $(RUBYLIBDIR)/syck
$(RUBYLIBDIR)/syck/syck.rb: $(srcdir)/lib/syck/syck.rb
	$(Q) $(COPY) $(srcdir)/lib/syck/syck.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/syck/syck.rb
install-rb-default: $(RUBYLIBDIR)/syck/constants.rb $(RUBYLIBDIR)/syck
$(RUBYLIBDIR)/syck/constants.rb: $(srcdir)/lib/syck/constants.rb
	$(Q) $(COPY) $(srcdir)/lib/syck/constants.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/syck/constants.rb
install-rb-default: $(RUBYLIBDIR)/syck/error.rb $(RUBYLIBDIR)/syck
$(RUBYLIBDIR)/syck/error.rb: $(srcdir)/lib/syck/error.rb
	$(Q) $(COPY) $(srcdir)/lib/syck/error.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/syck/error.rb
install-rb-default: $(RUBYLIBDIR)/syck/types.rb $(RUBYLIBDIR)/syck
$(RUBYLIBDIR)/syck/types.rb: $(srcdir)/lib/syck/types.rb
	$(Q) $(COPY) $(srcdir)/lib/syck/types.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/syck/types.rb
install-rb-default: $(RUBYLIBDIR)/syck/encoding.rb $(RUBYLIBDIR)/syck
$(RUBYLIBDIR)/syck/encoding.rb: $(srcdir)/lib/syck/encoding.rb
	$(Q) $(COPY) $(srcdir)/lib/syck/encoding.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/syck/encoding.rb
install-rb-default: $(RUBYLIBDIR)/syck/stringio.rb $(RUBYLIBDIR)/syck
$(RUBYLIBDIR)/syck/stringio.rb: $(srcdir)/lib/syck/stringio.rb
	$(Q) $(COPY) $(srcdir)/lib/syck/stringio.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/syck/stringio.rb
pre-install-rb-default: $(RUBYLIBDIR)
install-rb-default: $(RUBYLIBDIR)/syck.rb $(RUBYLIBDIR)
$(RUBYLIBDIR)/syck.rb: $(srcdir)/lib/syck.rb
	$(Q) $(COPY) $(srcdir)/lib/syck.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/syck.rb
pre-install-rb-default: $(RUBYLIBDIR)/yaml
install-rb-default: $(RUBYLIBDIR)/yaml/syck.rb $(RUBYLIBDIR)/yaml
$(RUBYLIBDIR)/yaml/syck.rb: $(srcdir)/lib/yaml/syck.rb
	$(Q) $(COPY) $(srcdir)/lib/yaml/syck.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/yaml/syck.rb
pre-install-rb-default:
	$(ECHO) installing default syck libraries
clean-rb-default::
	@-$(RMDIRS) $(RUBYLIBDIR)/syck 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/yaml 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR) 2> /dev/null || true
$(RUBYARCHDIR):
	$(Q) $(MAKEDIRS) $@
$(RUBYLIBDIR)/syck:
	$(Q) $(MAKEDIRS) $@
$(RUBYLIBDIR):
	$(Q) $(MAKEDIRS) $@
$(RUBYLIBDIR)/yaml:
	$(Q) $(MAKEDIRS) $@

site-install: site-install-so site-install-rb
site-install-so: install-so
site-install-rb: install-rb

.SUFFIXES: .c .m .cc .mm .cxx .cpp .C .o

.cc.o:
	$(ECHO) compiling $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $<

.mm.o:
	$(ECHO) compiling $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $<

.cxx.o:
	$(ECHO) compiling $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $<

.cpp.o:
	$(ECHO) compiling $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $<

.C.o:
	$(ECHO) compiling $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $<

.c.o:
	$(ECHO) compiling $(<)
	$(Q) $(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) $(COUTFLAG)$@ -c $<

.m.o:
	$(ECHO) compiling $(<)
	$(Q) $(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) $(COUTFLAG)$@ -c $<

$(RUBYARCHDIR)/$(DLLIB): $(OBJS) Makefile
	$(ECHO) linking shared-object $(DLLIB)
	@-$(RM) $(@)
	@-$(MAKEDIRS) $(@D)
	$(Q) $(LDSHARED) -o $@ $(OBJS) $(LIBPATH) $(DLDFLAGS) $(LOCAL_LIBS) $(LIBS)



###
$(OBJS): $(RUBY_EXTCONF_H)

ruby_headers = $(hdrdir)/ruby/ruby.h $(arch_hdrdir)/ruby/config.h $(hdrdir)/ruby/defines.h \
  $(hdrdir)/ruby/missing.h $(hdrdir)/ruby/intern.h $(hdrdir)/ruby/st.h
bytecode.o: bytecode.c syck.h gram.h $(ruby_headers)
emitter.o: emitter.c syck.h $(ruby_headers)
gram.o: gram.c syck.h $(hdrdir)/ruby/st.h
handler.o: handler.c syck.h $(ruby_headers)
implicit.o: implicit.c syck.h $(ruby_headers)
node.o: node.c syck.h $(ruby_headers)
rubyext.o: rubyext.c syck.h $(ruby_headers)
syck.o: syck.c syck.h $(ruby_headers)
token.o: token.c syck.h gram.h $(ruby_headers)
yaml2byte.o: yaml2byte.c syck.h yamlbyte.h $(ruby_headers)
