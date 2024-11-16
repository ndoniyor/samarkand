{ pkgs, ... }: {
    home.packages = with pkgs; [
        htop
        ripgrep
        zoxide
        unzip
        curl
    ];
}