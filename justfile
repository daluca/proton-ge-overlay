[private]
default:
    @just --list

[positional-arguments]
prefetch *proton-versions='':
    #!/usr/bin/env -S nix shell nixpkgs#bash --command bash

    set -euo pipefail

    for PROTON_VERSION in "$@"; do
      PREFETCH="$( nix-prefetch-url --print-path --unpack "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${PROTON_VERSION}/${PROTON_VERSION}.tar.gz" )"
      PROTON_HASH="$( nix hash path "${PREFETCH##*$'\n'}" )"
      echo "${PROTON_VERSION}: ${PROTON_HASH}"
    done
