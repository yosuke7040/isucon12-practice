#!/bin/bash

set -exu -o pipefail

cd $(dirname $0)

cp -r /etc/nginx .
cp -r /etc/mysql .
