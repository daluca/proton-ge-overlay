#!/usr/bin/env -S nix shell nixpkgs#bash --command bash
# shellcheck shell=bash

set -euo pipefail

while [[ $# -ge 1 ]]; do
  case "$1" in
  --debug)
    set -x
    shift
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
  elif [[ ${PROTON_VERSION} =~ GE-Proton1[2-9]-* ]] || [[ ${PROTON_VERSION} =~ GE-Proton11-* && ! ${PROTON_VERSION} =~ GE-Proton11-[1-2] ]]; then
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
