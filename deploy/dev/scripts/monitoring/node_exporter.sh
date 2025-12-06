#!/usr/bin/env sh
cd "$(dirname "$0")/../.."
dotenv -e env.dev -- sh -c 'node_exporter --path.procfs=/proc --path.sysfs=/sys --collector.filesystem.mount-points-exclude='\''^/(sys|proc|dev|host|etc)($|/)'\'' --web.listen-address="${NODE_EXPORTER_HOST}"'
