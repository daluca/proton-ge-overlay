{ inputs, ... }:

{
  imports = with inputs; [
    git-hooks.flakeModule
  ];

  perSystem = { self', ... }: {
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
  };
}
