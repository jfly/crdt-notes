#!/usr/bin/env sh
cd "$(dirname "$0")/../.."
dotenv -e env.dev -- loki -config.file=./loki/loki-config.yaml -server.http-listen-address="${LOKI_HOSTNAME}" -server.http-listen-port="${LOKI_PORT}"
