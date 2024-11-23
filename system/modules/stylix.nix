{ config, lib, pkgs, ... }:
{
  stylix = {
    enable = true;
    image = ../../assets/gruvbox-dark-rainbow.png;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-hard.yaml";
  };
}
