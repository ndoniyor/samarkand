{ config, pkgs, ... }:
{
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.variables = ["--all"];
    extraConfig = builtins.readFile ./config/hypr/hyprland.conf;
  };
}