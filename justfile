proton_ge_repo := "GloriousEggroll/proton-ge-custom"

[private]
default:
    @just --list

alias fmt := format

# format repository
[group("repo")]
format:
    nix fmt

# run pre-commit on all files
[group("checks")]
pre-commit:
    pre-commit run --all-files

# run all checks on all system types
[group("flake")]
check: format pre-commit
    nix flake check --all-systems

# prefetch hashes for the latest upstream GE-Proton release
[group("update")]
prefetch-latest:
    #!/usr/bin/env bash
    set -euo pipefail
    latest_tag="$(gh release view --repo "{{ proton_ge_repo }}" --json tagName --jq .tagName)"
    echo "Latest release: ${latest_tag}"
    ./bin/prefetch.sh "${latest_tag}"
