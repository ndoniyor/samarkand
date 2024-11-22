{ config, pkgs, ... }:
{
  users.defaultUserShell = pkgs.zsh;
  users.users.doniyor = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "networkmanager"
    ];
  };
  programs.zsh.enable = true;
}