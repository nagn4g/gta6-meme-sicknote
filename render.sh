#!/bin/sh
set -eu
cd "$(dirname "$0")"
CHROME="${CHROME:-/opt/meta-chromium/chrome}"
profile=$(mktemp -d "$PWD/.render-profile.XXXXXX")
trap 'rm -rf "$profile"' EXIT HUP INT TERM
"$CHROME" --user-data-dir="$profile" --headless --no-sandbox --disable-gpu --disable-dev-shm-usage --hide-scrollbars --no-pdf-header-footer --window-size=1600,1600 --force-device-scale-factor=1 --screenshot="$PWD/meme.png" "file://$PWD/design.html"
