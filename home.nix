{ lib, pkgs, ...}:
{
    home = {
        packages = with pkgs; [
            hello
        ];

        username = "doniyor";
        homeDirectory = "/home/doniyor";

        stateVersion = "24.05";
    };
}