{ pkgs, ... }: {
  imports = [
    ./dev.nix
    ./utilities.nix
    ./media.nix
    ./linux.nix
    ./hyprland.nix
  ];
}