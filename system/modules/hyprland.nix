{ config, pkgs, ... }:
{
  programs.hyprland.enable = true;
  environment.systemPackages = with pkgs; [
    hyprpaper
    kitty
    wofi
    waybar
  ];
}