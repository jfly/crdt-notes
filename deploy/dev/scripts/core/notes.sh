#!/usr/bin/env sh
cd "$(dirname "$0")/../.."
dotenv -e env.dev -- sh -c 'cd ../../services/notes/notes-service && npm run start'
