{ inputs, ... }:

{
  imports = with inputs; [
    home-manager.flakeModules.home-manager
  ];
}
