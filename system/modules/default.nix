{ ... }:
{
  imports = [
    ./packages
    ./hardware.nix
    ./plasma.nix
    ./fonts.nix
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