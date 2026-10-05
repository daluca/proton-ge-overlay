# proton-ge-overlay

Add GE-Proton packages in NixOS via overlays.

Included are options to expose to these packages to be view but non Steam applications as well.

## Install

Installing via nixosModules will add the overlays and include options to expose the packages on the filesystem.

### Flakes

```nix
{
  inputs = {
    nixpkgs.url = "github:nixos/nipkgs/nixos-unstable";

    proton-ge.url = "github:daluca/proton-ge-overlay";
    proton-ge.inputs.nixpkgs.follows = "nixpkgs";
  }

  outputs = { nixpkgs, proton-ge, ... }: {
    nixosConfigurations.<hostname> = nixpkgs.lib.nixosSystem {
      modules = [
        ({ pkgs, ... }: {
          imports = [
            proton-ge.nixosModules.default
          ];

          programs.steam.extraCompatPackages = with pkgs; [
            GE-Proton11-7
            GE-Proton11-6
            GE-Proton11-5
            GE-Proton10
            GE-Proton9
            GE-Proton8
            GE-Proton7
          ];

          home-manager.users.<username> = {
            programs.steam.exposeCompatibility = true;
          };
        })
      ];
    };
  };
}
```

### Overlays

You can install just the packages via overlays.

```nix
{ inputs, ... }: {
  nixpkgs.overlays = builtins.attrValues inputs.proton-ge.overlays;
}
```
