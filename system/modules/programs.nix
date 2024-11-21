{ config, pkgs, ... }:
{
  xdg.portal = {
    enable = true;
    wlr.enable = true;
    xdgOpenUsePortal = false;
    extraPortals = [
      pkgs.xdg-desktop-portal-gtk
    ];
    config.common.default = ["kde" "gtk"];
  };

  programs = {
    zsh.enable = true;
    firefox.enable = true;
  };
}
