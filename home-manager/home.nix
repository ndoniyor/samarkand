{ inputs, lib, config, pkgs, ...}:
let
    username = "doniyor";
in
{
    imports = [
        ../modules/fonts.nix
        ../modules/kitty.nix
        ../modules/hyprland.nix
        ../modules/packages
    ];
    nixpkgs = {
        overlays = [];
        config = {
            allowUnfree = true;
        };
    };


    home = {
        inherit username;
        homeDirectory = "/home/${username}";

        stateVersion = "24.05";
            
    };
    programs = {
        home-manager.enable = true;
        firefox.enable = true;
        vim.defaultEditor = true;
    };
}