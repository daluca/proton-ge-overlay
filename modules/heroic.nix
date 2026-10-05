{
  flake.homeModules.heroic =
    {
      config,
      lib,
      pkgs,
      osConfig,
      ...
    }:
    let
      cfg = config.programs.heroic;
    in
    {
      options = {
        programs.heroic = {
          enable = lib.mkEnableOption "Enable Heroic Games Launcher";

          package = lib.mkPackageOption pkgs "heroic" { };

          exposeCompatibility = lib.mkOption {
            type = lib.types.bool;
            default = false;
          };
        };
      };

      config = lib.mkIf cfg.enable {
        home.packages = [ cfg.package ];

        xdg.configFile = lib.mkIf cfg.exposeCompatibility (
          lib.genAttrs' osConfig.programs.steam.extraCompatPackages (
            package:
            lib.nameValuePair "heroic/tools/proton/${lib.removePrefix "proton-ge-bin-" package.name}" {
              source = lib.getOutput "steamcompattool" package;
            }
          )
        );
      };
    };
}
