{
  perSystem = { config, pkgs, ... }: {
    devShells.default = pkgs.mkShell {
      inputsFrom = with config; [
        pre-commit.devShell
      ];
      name = "proton-ge-overlay";
      packages = with pkgs; [
        gh
        just
        curl
        jq
      ];
    };
  };
}
