#!/bin/bash
# install dependencies on circle-ci

set -ex

# install shellcheck (https://github.com/koalaman/shellcheck)
SHELLCHECK_VERSION="0.4.1"
SHELLCHECK_BIN="$HOME/.cabal/bin/shellcheck"

existing_version=$("$SHELLCHECK_BIN" -V | awk '/version:/ {print $2}')
if [ "$existing_version" != "$SHELLCHECK_VERSION" ]; then
	rm -f -- "$SHELLCHECK_BIN"
  echo "Installing ShellCheck $SHELLCHECK_VERSION"
  cabal update --verbose=0
  cabal install --verbose=0 "shellcheck-$SHELLCHECK_VERSION"
else
	echo "Shellcheck $SHELLCHECK_VERSION already installed."
fi
