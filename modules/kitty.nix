{ config, lib, pkgs, ... }:
{
  programs.kitty = {
    enable = true;
    theme = "Gruvbox Dark";
    font = {
      name = lib.mkForce "JetBrainsMono Nerd Font";
      size = lib.mkForce 11;
    };
    settings = {
      confirm_os_window_close = 0;
      window_padding_width = 4;
    };
  };
}
