#!/usr/bin/env sh
cd "$(dirname "$0")/../.."
dotenv -e env.dev -- sh -c 'cd ../../services/identity && npm run start'
