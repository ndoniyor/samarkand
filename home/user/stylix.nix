{ config, lib, pkgs, ... }:
{
  stylix = {
    enable = true;
    image = pkgs.fetchurl {
      url = "https://codeberg.org/lunik1/nixos-logo-gruvbox-wallpaper/media/branch/master/png/gruvbox-dark-rainbow.png";
      sha256 = "7CMuETntiVUCKhUIdJzX+sf3F47GvuX2a61o4xbEzww=";
    };
    base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-hard.yaml";
    targets.kitty.enable = true;
    targets.waybar.enable = false;
    targets.wofi.enable = false;

    fonts = {
      monospace = {
        name = "JetBrainsMono Nerd Font";
        package = pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" ]; };
      };
      sansSerif = {
        name = "DejaVu Sans";
        package = pkgs.dejavu_fonts;
      };
      serif = {
        name = "DejaVu Sans";
        package = pkgs.dejavu_fonts;
      };
    };
  };
}
