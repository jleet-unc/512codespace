#!/usr/bin/env bash
set -euo pipefail

git fetch upstream
git merge --no-edit upstream/main
