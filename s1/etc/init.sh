#!/bin/bash

set -exu -o pipefail

cd $(dirname $0)

sudo cp -r /etc/nginx .
sudo cp -r /etc/mysql .
