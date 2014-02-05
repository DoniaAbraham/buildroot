################################################################################
#
# spidermonkey
#
################################################################################

SPIDERMONKEY_VERSION = 24.2.0
SPIDERMONKEY_SOURCE = mozjs-$(SPIDERMONKEY_VERSION).tar.bz2
SPIDERMONKEY_SITE = http://ftp.mozilla.org/pub/mozilla.org/js/
SPIDERMONKEY_SUBDIR = js/src
SPIDERMONKEY_INSTALL_STAGING = YES
SPIDERMONKEY_LICENSE = MPL-2.0
SPIDERMONKEY_LICENSE_FILES = COPYING
SPIDERMONKEY_DEPENDENCIES += libnspr host-python

SPIDERMONKEY_MAKE_OPTS = HOST_CC=$(HOSTCC) \
						 HOST_CXX=$(HOSTCXX)

$(eval $(autotools-package))
