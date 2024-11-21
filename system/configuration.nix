{ config, lib, pkgs, pkgs-stable, inputs, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ./modules
  ];
  system.stateVersion = "24.05";
}
