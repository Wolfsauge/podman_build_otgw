#!/usr/bin/env bash

set -uf -o pipefail

cd /workspace/text-generation-webui

while true
do
  source /workspace/ooba-options.sh
  ./start_linux.sh $OOBA_OPTIONS

  sleep 3
done
