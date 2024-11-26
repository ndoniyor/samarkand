{ config, pkgs, lib, inputs, ... }:
{
  imports = [
    ./user
  ];

  home.username = "doniyor";
  home.homeDirectory = "/home/doniyor";
  home.stateVersion = "24.05";

  programs.home-manager.enable = true;
}