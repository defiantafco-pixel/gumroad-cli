#!/usr/bin/env bash
set -euo pipefail

# Repository setup wrapper for Gumroad CLI.
# This script delegates to the existing install helper in script/install.sh.

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
INSTALL_SCRIPT="$SCRIPT_DIR/script/install.sh"

if [[ ! -f "$INSTALL_SCRIPT" ]]; then
  echo "Error: install script not found at $INSTALL_SCRIPT" >&2
  exit 1
fi

exec bash "$INSTALL_SCRIPT" "$@"
