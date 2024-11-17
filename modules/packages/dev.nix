{ pkgs, unstable, ...}: {
    home.packages = with pkgs; [
        git
        nodejs
        python3
        docker
        docker-compose
        postman
        nil # Nix language server
        gnumake
    ] ++ (with unstable; [
        vscode
    ]);
}