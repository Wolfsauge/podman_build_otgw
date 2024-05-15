#!/usr/bin/env bash

set -euf -o pipefail

echo -n "Restarting text-generation-webui: "

if pkill -f "python server.py"
then
  echo "... done. The UI will try to restart in a few seconds."
else
  echo "... was not running."
fi

