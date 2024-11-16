{ config, lib, pkgs, ...}:{
    wayland.windowManager.hyprland = {
        enable = true;
        extraConfig = builtins.readFile ../config/hypr/hyprland.conf
    };
}