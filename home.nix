{ lib, pkgs, ...}:
{
    home = {
        packages = with pkgs; [
            hello
        ];

        username = "doniyor";
        homeDirectory = "/home/doniyor";

        stateVersion = "24.05";
            
        file = {
            "hello.txt".text = "hello, world";
        };
    };
}