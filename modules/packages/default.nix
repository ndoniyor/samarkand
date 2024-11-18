{ pkgs, unstable, ... }: {
  imports = [
    (import ./dev.nix {inherit pkgs unstable; })
    (import ./utilities.nix {inherit pkgs unstable; }) 
    (import ./media.nix {inherit pkgs unstable; })
    (import ./linux.nix  {inherit pkgs unstable; })
  ];
}