{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
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
    acpi
    throttled
    home-manager

    dolphin
  ];
}
