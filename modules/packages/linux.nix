{ pkgs, unstable, ... }:
{
  home.packages = with pkgs; [
    wayland

    font-awesome

    fprintd
    dconf

    # Hyprland
    wofi
    waybar
  ] ++ (with unstable; [
  ]);
}
