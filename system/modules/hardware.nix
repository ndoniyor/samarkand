{ config, pkgs, ... }:
{
  hardware = {
    bluetooth.enable = true;
    graphics = {
      enable = true;
    };
  };
  security.polkit.enable = true;
}
