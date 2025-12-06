#!/usr/bin/env sh
cd "$(dirname "$0")/../.."
dotenv -e env.dev -- sh -c 'GRAFANA_BIN=$(which grafana); GRAFANA_STORE=$(dirname $(dirname "$GRAFANA_BIN")); GF_SERVER_HTTP_ADDR=${GRAFANA_HOST%%:*} GF_SERVER_HTTP_PORT=${GRAFANA_HOST##*:} grafana server --homepath="$GRAFANA_STORE/share/grafana" --config=./grafana/grafana.ini'
