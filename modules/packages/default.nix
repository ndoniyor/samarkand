{ pkgs, ... }: {
  imports = [
    ./dev.nix
    ./utilities.nix
    ./media.nix
  ];
}