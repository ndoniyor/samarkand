{ pkgs, ... }: 
{
  environment.systemPackages = with pkgs; [
    git
    nodejs
    python3
    go
    docker
    docker-compose
    postman
    nil # Nix language server
    lazygit
    gopls
    nixpkgs-fmt
    gnumake
    vscode
    lunarvim
    firebase-tools
  ]; 
}
