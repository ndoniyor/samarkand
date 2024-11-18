{ config, lib, pkgs, unstable, ...}:{
    wayland.windowManager.hyprland = {
        enable = true;
        extraConfig = builtins.readFile ../dotfiles/hypr/hyprland.conf;
    };
}
