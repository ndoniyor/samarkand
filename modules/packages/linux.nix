{ pkgs, unstable, ... }:
{ home.packages = with pkgs; [
    wayland
    
    font-awesome

    fprintd

    # Hyprland
    wofi
    waybar
    ] ++ (with unstable; [
    ]);
}
