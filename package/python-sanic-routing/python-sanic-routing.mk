################################################################################
#
# python-sanic-routing
#
################################################################################

PYTHON_SANIC_ROUTING_VERSION = 0.6.2
PYTHON_SANIC_ROUTING_SOURCE = sanic-routing-$(PYTHON_SANIC_ROUTING_VERSION).tar.gz
PYTHON_SANIC_ROUTING_SITE = https://files.pythonhosted.org/packages/6f/84/73bfb4f88dce07f8245657fd109fdc0b550cc6ec8e8d2c8ef950770bd636
PYTHON_SANIC_ROUTING_SETUP_TYPE = setuptools
PYTHON_SANIC_ROUTING_LICENSE = Apache-2.0, MIT
PYTHON_SANIC_ROUTING_LICENSE_FILES = LICENSE-APACHE LICENSE-MIT

$(eval $(python-package))
