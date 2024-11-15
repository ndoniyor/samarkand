{ lib, pkgs, ...}:
let
    username = "doniyor";
in
{
    imports = [];
    nixpkgs = {
        overlays = [];
    };

    config = {
        allowUnfree = true;
    };

    home = {
        packages = with pkgs; [
        ];

        inherit username;
        homeDirectory = "/home/${username}";

        stateVersion = "24.05";
            
        programs.home-manager.enable = true;
        programs.firefox.enable = true;
        programs.hyprland.enable = true;

        programs.vim.defaultEditor = true;
    };
}