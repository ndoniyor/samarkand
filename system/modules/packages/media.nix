{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    vlc
    spotify
    discord
    vesktop
  ];
}
