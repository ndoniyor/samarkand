{ ... }:
{
  imports = [
    ./hyprland.nix
    ./config.nix
    ./environment.nix
    ./git.nix
    ./zsh.nix
    ./stylix.nix
    ./waybar.nix
  ];
  programs.kitty.enable = true;
  programs.firefox.enable = true;
}
