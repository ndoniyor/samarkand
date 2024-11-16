{ config, lib, pkgs, ... }:
{
    programs.kitty = {
        enable = true;
        theme = "Gruvbox Dark";
        font = {
            name = "JetBrainsMono Nerd Font";
            size = 12;
        };
        settings = {
            confirm_os_window_close = 0;
            background_opacity = 0.95;
            window_padding_width = 4;
        };
    };
}