#!/usr/bin/env sh
cd "$(dirname "$0")/../.."
dotenv -e env.dev -- sh -c 'envsubst < ./prometheus/prometheus.yml > ./prometheus/prometheus.yml.actual && prometheus --config.file=./prometheus/prometheus.yml.actual --storage.tsdb.path=./prometheus/tmp --web.listen-address="${PROMETHEUS_HOST}"'
