#!/usr/bin/env bash

command -v sox &>/dev/null || echo "ERR: 'sox' not found in your PATH"
bash $(dirname "${0}")/hcuesplitter "${@}"
