#!/usr/bin/env sh
cd "$(dirname "$0")/../.."
dotenv -e env.dev -- caddy run --config ./caddy/Caddyfile
