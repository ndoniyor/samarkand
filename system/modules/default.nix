{ ... }:
{
  imports = [
    ./packages
    ./hardware.nix
    ./fonts.nix
    ./hyprland.nix
    ./i18n.nix
    ./networking.nix
    ./nixsettings.nix
    ./programs.nix
    ./sound.nix
    ./boot.nix
    ./power.nix
    ./users.nix
  ];
}