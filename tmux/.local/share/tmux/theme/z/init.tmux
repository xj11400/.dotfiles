#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

main() {
  local theme
  theme="init"

  if [ -f "$CURRENT_DIR/${theme}.tmuxtheme" ]; then
    tmux source-file "$CURRENT_DIR/${theme}.tmuxtheme"
  fi
}

main "$@"
