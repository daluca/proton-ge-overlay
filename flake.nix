{
  description = "GE-Proton releases overlay";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    git-hooks.url = "github:cachix/git-hooks.nix";
    git-hooks.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, git-hooks }:
  let
    inherit (nixpkgs) lib;
    supportedSystems = [ "x86_64-linux" "aarch64-linux" ];
    forAllSystems = lib.genAttrs supportedSystems;
  in {
    overlays = rec {
      default = proton-ge;

      proton-ge = import ./overlays;
    };

    checks = forAllSystems (system:
      {
        pre-commit = git-hooks.lib.${system}.run {
          src = ./.;
          hooks = {
            check-added-large-files.enable = true;
            check-merge-conflicts.enable = true;
            detect-private-keys.enable = true;
            end-of-file-fixer.enable = true;
            forbid-new-submodules.enable = true;
            trim-trailing-whitespace.enable = true;
            typos.enable = true;
            deadnix = {
              enable = true;
              settings.edit = true;
            };
          };
        };
      }
    );

    devShells = forAllSystems (system:
      let
        inherit (self.checks.${system}) pre-commit;
        pkgs = nixpkgs.legacyPackages.${system};
      in {
        default = pkgs.mkShell {
          name = "proton-ge-overlay";
          packages = with pkgs; pre-commit.enabledPackages ++ [
            just
          ];
          shellHook = pre-commit.shellHook;
        };
      }
    );
  };
}
