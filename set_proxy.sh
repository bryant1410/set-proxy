#!/usr/bin/env bash

PROXY_ADDRESS='proxy.fing.edu.uy'
PROXY_PORT=3128

PROXY_ADDRESS_AND_PORT="$PROXY_ADDRESS:$PROXY_PORT"

CHECK_SUBNET_FILE="$HOME/.set-proxy/check_subnet.py"

if [[ $("$CHECK_SUBNET_FILE") == "1" ]]; then
  export http_proxy="http://$PROXY_ADDRESS_AND_PORT"
  export https_proxy="https://$PROXY_ADDRESS_AND_PORT"
else
  unset http_proxy
  unset https_proxy
fi
