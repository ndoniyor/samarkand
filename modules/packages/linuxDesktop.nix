{ pkgs, unstable, ... }:
{
    home.packages = with pkgs; [
        wayland
        wofi
        waybar
        hyprpaper
        swaylock
        font-awesome
    ] ++ (with unstable; [
        hyprland
    ]);
}