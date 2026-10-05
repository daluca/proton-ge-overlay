{ self, ... }:

{
  flake.nixosModules.default = self.nixosModules.exposeCompatibility;

  flake.nixosModules.exposeCompatibility =
    { options, lib, ... }:
    lib.mkMerge [
      {
        nixpkgs.overlays = builtins.attrValues self.overlays;
      }
      (lib.optionalAttrs (options ? home-manager) {
        home-manager.sharedModules = with self.homeModules; [
          steam
          heroic
        ];
      })
    ];
}
