
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
srcdir = $(top_srcdir)/ext/json
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
SRCS = 
OBJS = 
TARGET = 
DLLIB = 
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

install-so: Makefile
install-rb: pre-install-rb install-rb-default
install-rb-default: pre-install-rb-default
pre-install-rb: Makefile
pre-install-rb-default: Makefile
pre-install-rb-default: $(RUBYLIBDIR)
install-rb-default: $(RUBYLIBDIR)/json.rb $(RUBYLIBDIR)
$(RUBYLIBDIR)/json.rb: $(srcdir)/lib/json.rb
	$(Q) $(COPY) $(srcdir)/lib/json.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/json.rb
pre-install-rb-default: $(RUBYLIBDIR)/json
install-rb-default: $(RUBYLIBDIR)/json/version.rb $(RUBYLIBDIR)/json
$(RUBYLIBDIR)/json/version.rb: $(srcdir)/lib/json/version.rb
	$(Q) $(COPY) $(srcdir)/lib/json/version.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/json/version.rb
install-rb-default: $(RUBYLIBDIR)/json/ext.rb $(RUBYLIBDIR)/json
$(RUBYLIBDIR)/json/ext.rb: $(srcdir)/lib/json/ext.rb
	$(Q) $(COPY) $(srcdir)/lib/json/ext.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/json/ext.rb
install-rb-default: $(RUBYLIBDIR)/json/common.rb $(RUBYLIBDIR)/json
$(RUBYLIBDIR)/json/common.rb: $(srcdir)/lib/json/common.rb
	$(Q) $(COPY) $(srcdir)/lib/json/common.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/json/common.rb
pre-install-rb-default: $(RUBYLIBDIR)/json/add
install-rb-default: $(RUBYLIBDIR)/json/add/rational.rb $(RUBYLIBDIR)/json/add
$(RUBYLIBDIR)/json/add/rational.rb: $(srcdir)/lib/json/add/rational.rb
	$(Q) $(COPY) $(srcdir)/lib/json/add/rational.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/json/add/rational.rb
install-rb-default: $(RUBYLIBDIR)/json/add/complex.rb $(RUBYLIBDIR)/json/add
$(RUBYLIBDIR)/json/add/complex.rb: $(srcdir)/lib/json/add/complex.rb
	$(Q) $(COPY) $(srcdir)/lib/json/add/complex.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/json/add/complex.rb
install-rb-default: $(RUBYLIBDIR)/json/add/core.rb $(RUBYLIBDIR)/json/add
$(RUBYLIBDIR)/json/add/core.rb: $(srcdir)/lib/json/add/core.rb
	$(Q) $(COPY) $(srcdir)/lib/json/add/core.rb $(@D)
clean-rb-default::
	@-$(RM) $(RUBYLIBDIR)/json/add/core.rb
pre-install-rb-default:
	$(ECHO) installing default  libraries
clean-rb-default::
	@-$(RMDIRS) $(RUBYLIBDIR)/json/add 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR)/json 2> /dev/null || true
	@-$(RMDIRS) $(RUBYLIBDIR) 2> /dev/null || true
$(RUBYLIBDIR):
	$(Q) $(MAKEDIRS) $@
$(RUBYLIBDIR)/json:
	$(Q) $(MAKEDIRS) $@
$(RUBYLIBDIR)/json/add:
	$(Q) $(MAKEDIRS) $@

site-install: site-install-so site-install-rb
site-install-so: install-so
site-install-rb: install-rb

