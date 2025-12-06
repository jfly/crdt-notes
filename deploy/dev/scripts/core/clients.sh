#!/usr/bin/env sh
cd "$(dirname "$0")/../.."
dotenv -e env.dev -- sh -c 'cd ../../clients/spas && npm run dev'
