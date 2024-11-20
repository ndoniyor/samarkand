{ pkgs, hyprland, ... }: {
  wayland.windowManager.hyprland = {
    enable = true;
    extraConfig = builtins.readFile ../dotfiles/hypr/hyprland.conf;
  };
  programs.kitty.enable = true;
}
