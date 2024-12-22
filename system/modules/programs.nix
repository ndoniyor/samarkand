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
  programs.dconf.enable = true;

  fonts = {
    packages = with pkgs; [
      corefonts
      jetbrains-mono
      noto-fonts
      ubuntu_font_family
    ];
    fontDir.enable = true;
    enableDefaultPackages = true;
    fontconfig = {
      defaultFonts = {
        monospace = [ "JetBrainsMono" "FontAwesome" ];
        sansSerif = [ "Ubuntu" "Noto Sans"];
        serif = [ "Ubuntu" "Noto Sans"];
      };
    };
  };
}
