#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"

ARGS="-steam -game tf -insecure -novid -nojoy -nosteamcontroller -nohltv -particles 1 -noborder -particle_fallback 2 -dev -nobreakpad -console"

export LAUNCH_PREFIX="$HOME/.steam/bin32/steam-runtime/run.sh"
LAUNCH_PREFIX+=" $(command -v mangohud || true)"

${LAUNCH_PREFIX} "$(pwd)"/hl2.sh ${ARGS} $@
