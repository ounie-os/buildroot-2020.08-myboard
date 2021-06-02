################################################################################
#
# python-sanic
#
################################################################################

PYTHON_SANIC_VERSION = 21.3.4
PYTHON_SANIC_SOURCE = v$(PYTHON_SANIC_VERSION).tar.gz
PYTHON_SANIC_SITE = https://github.com/sanic-org/sanic/archive/refs/tags
PYTHON_SANIC_SETUP_TYPE = setuptools
PYTHON_SANIC_LICENSE = BSD-3-Clause
PYTHON_SANIC_LICENSE_FILES = LICENSE.rst docs/license.rst
PYTHON_SANIC_DEPENDENCIES = python-ujson python-websockets python-httptools python-aiofiles python-multidict python-sanic-routing python-uvloop

$(eval $(python-package))
