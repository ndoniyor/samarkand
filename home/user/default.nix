{ ... }:
{
  imports = [
    ./hyprland.nix
    ./config.nix
    ./environment.nix
    ./git.nix
    ./zsh.nix
    ./stylix.nix
    ./fonts.nix
    ./waybar.nix
    ./wofi.nix
    ./nvim
  ];
  programs.kitty.enable = true;
  programs.firefox.enable = true;
}
