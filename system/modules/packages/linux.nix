{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    libsForQt5.plasma-workspace
    libsForQt5.plasma-integration
  ];
}
