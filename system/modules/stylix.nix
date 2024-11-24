{ config, lib, pkgs, ... }:
{
  stylix = {
    enable = true;
    image = pkgs.fetchurl {
      url = "https://codeberg.org/lunik1/nixos-logo-gruvbox-wallpaper/media/branch/master/png/gruvbox-dark-rainbow.png";
      sha256 = "7CMuETntiVUCKhUIdJzX+sf3F47GvuX2a61o4xbEzww=";
    };
    targets.grub.enable = false;
    targets.plymouth.enable = false;
  };
}
