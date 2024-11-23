{ config, lib, pkgs, ... }:
let
  assetsDir = ../../assets;
in
{
  stylix.enable = true;
  stylix.image = toString assetsDir + "/gruvbox-dark-rainbow.png";
}