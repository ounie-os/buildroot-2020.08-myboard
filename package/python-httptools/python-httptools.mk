################################################################################
#
# python-httptools
#
################################################################################

PYTHON_HTTPTOOLS_VERSION = 0.2.0
PYTHON_HTTPTOOLS_SOURCE = httptools-$(PYTHON_HTTPTOOLS_VERSION).tar.gz
PYTHON_HTTPTOOLS_SITE = https://files.pythonhosted.org/packages/96/82/08c5ee0191ea7f765e9a44cc66827c0ba35b896f72b4d31f9cd9d180b08f
PYTHON_HTTPTOOLS_SETUP_TYPE = setuptools
PYTHON_HTTPTOOLS_LICENSE = Apache-2.0, MIT
PYTHON_HTTPTOOLS_LICENSE_FILES = LICENSE-APACHE LICENSE-MIT

$(eval $(python-package))
