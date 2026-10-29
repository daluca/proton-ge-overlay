latest := `curl --silent https://api.github.com/repos/GloriousEggroll/proton-ge-custom/releases/latest | jq --raw-output '.tag_name'`

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

# prefetch hashes, defaults to latest version
[group("update")]
prefetch versions=latest:
    ./bin/prefetch.sh {{ versions }}
