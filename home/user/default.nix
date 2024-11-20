{ ... }:
{
  imports = [
    ./config.nix
    ./environment.nix
    ./git.nix
    ./zsh.nix
  ];
  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = (_: true);
    };
  };
}