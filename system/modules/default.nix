{ ... }:
{
  imports = [
    ./packages
    ./hardware.nix
    ./hyprland.nix
    ./fonts.nix
    ./i18n.nix
    ./networking.nix
    ./nixsettings.nix
    ./programs.nix
    ./sound.nix
    ./boot.nix
    ./power.nix
    ./users.nix
    ./greetd.nix
        #    ./stylix.nix
  ];
}
