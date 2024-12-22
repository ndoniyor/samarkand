{ config, pkgs, ... }:
{
  hardware = {
    bluetooth.enable = true;
    graphics = {
      enable = true;
    };
  };
  services.avahi = {
    enable = true;
    nssmdns4 = true;
    openFirewall = true;
  };
  security.polkit.enable = true;
  services.blueman.enable = true;
}
