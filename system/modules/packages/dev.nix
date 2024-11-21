{ pkgs, pkgs-unstable, ... }: 
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
  ] ++ (with pkgs-unstable; [
    vscode
  ]); 
}
