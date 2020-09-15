#!/bin/sh

set -u
set -e

BOARD_DIR="$(dirname $0)/.."
CONFIG_DIR="$(dirname $0)"
PUB_CONFIG_DIR="$(dirname $0)/../public-config"
WIFI_FIRMWARE="${BOARD_DIR}/rtlwifi"
INIT_SCRIPT_SERVICE="${CONFIG_DIR}/init_systemd/service"
INIT_SCRIPT_BIN="${CONFIG_DIR}/init_systemd/bin"

mkdir -p ${TARGET_DIR}/lib/firmware
cp -ar ${WIFI_FIRMWARE} ${TARGET_DIR}/lib/firmware/

mkdir -p ${TARGET_DIR}/etc/docker
cp -ar ${PUB_CONFIG_DIR}/daemon.json ${TARGET_DIR}/etc/docker/
cp -ar ${PUB_CONFIG_DIR}/journald.conf ${TARGET_DIR}/etc/systemd/

cp -ar ${INIT_SCRIPT_SERVICE}/* ${TARGET_DIR}/usr/lib/systemd/system/
cp -ar ${INIT_SCRIPT_BIN}/* ${TARGET_DIR}/usr/bin/

sed -i "5s/'# '/'\\\u@\\\h:\\\w\\\\$ '/g" ${TARGET_DIR}/etc/profile
sed -i "7s/'$ '/'\\\u@\\\h:\\\w\\\\$ '/g" ${TARGET_DIR}/etc/profile
