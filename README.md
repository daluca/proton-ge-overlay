# proton-ge-overlay

## Install

Add proton-ge-overlay as a flake input

### Flakes

```nix
{
  inputs = {
    proton-ge.url = "github:daluca/proton-ge-overlay";
    proton-ge.inputs.nixpkgs.follows = "nixpkgs";
  }

  outputs = { nixpkgs, proton-ge, ... }: {
    nixosConfigurations.<hostname> = nixpkgs.lib.nixosSystem {
      modules = [
        ({ pkgs, ... }: {
          nixpkgs.overlays = [
            proton-ge.overlays.default
          ];
        })
      ];
    };
  };
}
```

## Configure

### Steam

Add a GE-Proton version to Steam

```nix
{
  programs.steam.extraCompatPackages = with pkgs; [
    GE-Proton10-29
    GE-Proton9-27
    GE-Proton8-32
    GE-Proton7-55
  ];
}
```
