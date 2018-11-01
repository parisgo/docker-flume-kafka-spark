#!/bin/bash

FLUME_CONF_DIR=/root/flume/conf

flume-ng agent \
	--conf ${FLUME_CONF_DIR}/ \
	--conf-file ${FLUME_CONF_DIR}/flume.conf \
	--name a1 \
	-Dflume.root.logger=INFO,console