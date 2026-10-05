{ inputs, ... }:

{
  imports = with inputs; [
    treefmt.flakeModule
  ];

  perSystem = {
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
}
