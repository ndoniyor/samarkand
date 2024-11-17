{ pkgs, unstable, ... }:
{
  home.packages = with pkgs; [
    wofi  
    waybar
    hyprpaper
    swaylock
  ] ++ (with unstable; [
    hyprland
  ]);
}