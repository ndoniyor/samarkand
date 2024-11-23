{ config, pkgs, ... }:
{
  xdg.portal = {
    enable = true;
    wlr.enable = true;
    xdgOpenUsePortal = false;
    extraPortals = [
      pkgs.xdg-desktop-portal-gtk
      pkgs.xdg-desktop-portal-kde
    ];
    config.common.default = ["kde" ];
  };

  programs = {
    zsh.enable = true;
    firefox.enable = true;
    vim = {
      enable = true;
      package = pkgs.vim-full;
    };
  };
}
