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
  ];
  programs.kitty.enable = true;
  programs.firefox.enable = true;
}
