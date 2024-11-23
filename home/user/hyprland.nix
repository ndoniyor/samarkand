{ config, pkgs, ... }:
{
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.variables = ["--all"];
    xwayland.enable = true;
    extraConfig = builtins.readFile ./config/hypr/hyprland.conf;
  };
}