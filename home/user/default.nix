{ ... }:
{
  imports = [
    ./config.nix
    ./environment.nix
    ./git.nix
    ./zsh.nix
  ];
  # programs.home-manager.enable = true;
}