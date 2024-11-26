{ pkgs, ... }:
{
  fonts = {
    packages = with pkgs; [
      font-awesome
      jetbrains-mono
      (nerdfonts.override { fonts = ["JetBrainsMono"]; })
    ];
    
    # Add these settings
    enableDefaultFonts = true;  # or fontDir.enable = true; in newer versions
    
    # Optional but recommended
    fontconfig = {
      enable = true;
      defaultFonts = {
        monospace = [ "JetBrainsMono Nerd Font Mono" "FontAwesome" ];
        sansSerif = [ "DejaVu Sans" ];
        serif = [ "DejaVu Serif" ];
      };
    };
  };
}