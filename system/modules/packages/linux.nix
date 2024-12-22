{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    networkmanagerapplet
    hyprpaper
    wl-clipboard
    rofi-screenshot
    grim
    slurp
    gtk3
  ];
}
