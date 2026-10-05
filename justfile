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
