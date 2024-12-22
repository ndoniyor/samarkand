{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    zsh
    zsh-autosuggestions
    thefuck

    htop
    ripgrep
    zoxide
    fd
    eza
    unzip
    curl
    glxinfo
    brightnessctl
    pamixer
    playerctl
    tree
    vim
    xclip

    tlp
    acpi
    throttled
    home-manager
    
    dolphin
  ];
}
