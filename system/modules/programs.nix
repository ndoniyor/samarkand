{ config, pkgs, ... }:
{
  xdg.portal = {
    enable = true;
    wlr.enable = true;
    xdgOpenUsePortal = false;
    extraPortals = [
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
