{
  description = "GE-Proton releases overlay";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    flake-parts.url = "github:hercules-ci/flake-parts";

    import-tree.url = "github:denful/import-tree";

    git-hooks.url = "github:cachix/git-hooks.nix";
    git-hooks.inputs.nixpkgs.follows = "nixpkgs";

    treefmt.url = "github:numtide/treefmt-nix";
    treefmt.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs =
    { flake-parts, import-tree, ... }@inputs:
    flake-parts.lib.mkFlake { inherit inputs; } {
      imports = with inputs; [
        home-manager.flakeModules.home-manager
        git-hooks.flakeModule
        treefmt.flakeModule
        (import-tree ./modules)
      ];

      systems = [
        "x86_64-linux"
        "aarch64-linux"
      ];

      perSystem =
        {
          self',
          config,
          pkgs,
          ...
        }:
        {
          devShells.default = pkgs.mkShell {
            inputsFrom = with config; [
              pre-commit.devShell
            ];
            name = "proton-ge-overlay";
            packages = with pkgs; [
              just
              curl
              jq
            ];
          };

          pre-commit.settings = {
            src = ../.;
            hooks = {
              check-added-large-files.enable = true;
              check-merge-conflicts.enable = true;
              detect-private-keys.enable = true;
              end-of-file-fixer.enable = true;
              forbid-new-submodules.enable = true;
              trim-trailing-whitespace.enable = true;
              typos.enable = true;
              treefmt.enable = true;
              treefmt.package = self'.formatter;
              deadnix = {
                enable = true;
                settings.edit = true;
              };
            };
          };

          treefmt = {
            projectRootFile = "flake.nix";
            programs.deadnix.enable = true;
            programs.just.enable = true;
            programs.nixfmt.enable = true;
            programs.shellcheck.enable = true;
            programs.shfmt.enable = true;
            programs.statix.enable = true;
            settings.formatter.deadnix.priority = 3;
            settings.formatter.nixfmt.priority = 1;
            settings.formatter.statix.priority = 2;
          };
        };
    };
}
