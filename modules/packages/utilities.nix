{ pkgs, unstable, ... }: {
  home.packages = with pkgs; [
    zsh
    zsh-autosuggestions
    thefuck

    htop
    ripgrep
    zoxide
    unzip
    curl
    glxinfo
    brightnessctl
    pamixer
    playerctl
    tree
    vim

    tlp
    throttled

    dolphin
    kitty
  ];
}
