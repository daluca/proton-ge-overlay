{
  flake.homeModules.steam =
    {
      config,
      lib,
      osConfig,
      ...
    }:
    let
      cfg = config.programs.steam;
    in
    {
      options = {
        programs.steam = {
          exposeCompatibility = lib.mkOption {
            type = lib.types.bool;
            default = false;
          };
        };
      };

      config = lib.mkIf cfg.exposeCompatibility {
        xdg.dataFile = lib.genAttrs' osConfig.programs.steam.extraCompatPackages (
          package:
          lib.nameValuePair "Steam/compatibilitytools.d/${lib.removePrefix "proton-ge-bin-" package.name}" {
            source = lib.getOutput "steamcompattool" package;
          }
        );
      };
    };
}
