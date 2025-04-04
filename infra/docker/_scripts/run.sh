#!/usr/bin/env bash

readonly iface="${INTERFACE:-en0}"

readonly host_ip=$(ifconfig "${iface}" | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p')

export OLLAMA_HOST="${host_ip}:11434"

"$@"
