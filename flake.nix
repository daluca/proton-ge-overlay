{
  description = "GE-Proton releases overlay";

  inputs = {
    nixpkgs.url = "github:nixpkgs/nixos/nixos-unstable";
  };

  outputs = {
    overlays = rec {
      default = proton-ge;

      proton-ge = import ./overlays;
    };
  };
}
