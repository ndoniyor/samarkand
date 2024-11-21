{ config, pkgs, pkgs-unstable, ... }:
{
  documentation.nixos.enable = true;
  nixpkgs.config = {
    allowUnfree = true;
  };
  nix = {
    settings = {
      warn-dirty = false;
      experimental-features = [ "nix-command" "flakes" ];
      auto-optimise-store = true;
      substituters = ["https://hyprland.cachix.org"];
      trusted-public-keys = ["hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="];
    };

    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };
  };
}
