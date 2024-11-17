{ pkgs, unstable, ...}: {
    home.packages = with pkgs; [
        git
        nodejs
        python3
        vscode
        docker
        docker-compose
        postman
        nil # Nix language server
        gnumake
    ] ++ (with unstable; [
        vscode
    ]);
}