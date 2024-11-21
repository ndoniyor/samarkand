{ config, pkgs, ... }:
{
  users.users.doniyor = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "networkmanager"
    ];
  };
}