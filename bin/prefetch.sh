#!/usr/bin/env -S nix
#!nix shell nixpkgs#bash --command bash

# shellcheck shell=bash

set -euo pipefail

function usage() {
  echo "Usage: ${0##*/} --debug [GE_PROTON_VERSIONS]"
  echo
  echo "Example:"
  echo "  ${0##*/} GE-Proton11-5 GE-Proton11-6"
  echo
  echo "Options:"
  echo "      --debug                   Toggle bash debug output"
}

function main() {
  while [[ $# -ge 1 ]]; do
    case "$1" in
    --help | -h)
      set +x
      usage
      exit 0
      ;;
    --debug)
      set -x
      shift
      ;;
    --* | -*)
      set +x
      echo "Unknown argument: $1"
      usage
      exit 1
      ;;
    *)
      POSITIONAL_ARGS+=("$1")
      shift
      ;;
    esac
  done

  set -- "${POSITIONAL_ARGS[@]}"

  for PROTON_VERSION in "${POSITIONAL_ARGS[@]}"; do
    ARCHITECTURES=()
    if [[ ${PROTON_VERSION} == GE-Proton11-3 ]]; then
      ARCHITECTURES+=("" "-aarch64")
    elif [[ ${PROTON_VERSION} =~ GE-Proton1[2-9]-* ]] || [[ ${PROTON_VERSION} =~ GE-Proton11-* && ! ${PROTON_VERSION} =~ GE-Proton11-[1-2]$ ]]; then
      ARCHITECTURES+=("-x86_64" "-aarch64")
    else
      ARCHITECTURES+=("")
    fi

    for ARCHITECTURE in "${ARCHITECTURES[@]}"; do
      PREFETCH="$(nix-prefetch-url --print-path --unpack "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${PROTON_VERSION}/${PROTON_VERSION}${ARCHITECTURE}.tar.gz")"
      PROTON_HASH="$(nix hash path "${PREFETCH##*$'\n'}")"
      printf "%s%s = \"%s\";\n" "${PROTON_VERSION}" "${ARCHITECTURE}" "${PROTON_HASH}"
    done
  done
}

main "$@"
