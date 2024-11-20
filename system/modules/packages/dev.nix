{ pkgs, ... }: 
{
  environment.systemPackages = with pkgs; [
    git
    nodejs
    python3
    docker
    docker-compose
    postman
    nil # Nix language server
    nixpkgs-fmt
    gnumake
    vscode
  ]; 
}
