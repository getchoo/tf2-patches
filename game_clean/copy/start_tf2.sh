#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"

ARGS="-steam -game tf -insecure -novid -nojoy -nosteamcontroller -particle_fallback 2 -nobreakpad"

$HOME/.steam/bin32/steam-runtime/run.sh ${LAUNCH_PREFIX} "$(pwd)"/hl2.sh ${ARGS} $@
