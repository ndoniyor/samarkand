{ pkgs, unstable, ... }:
{
    home.packages = with pkgs; [
        wayland
        
        font-awesome

        fprintd
    ];
}