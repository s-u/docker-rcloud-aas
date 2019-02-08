#!/bin/bash
export LANG=en_US.UTF-8

cd /data/rcloud && sh scripts/fresh_start.sh --no-build
/data/rcloud/services/rcloud-script-start
/data/rcloud/services/rcloud-proxy
