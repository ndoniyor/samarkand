{ pkgs, ... }:
{
  fonts = {
    packages = with pkgs; [
      corefonts
      font-awesome
      jetbrains-mono
      noto-fonts
      noto-fonts-emoji
      ubuntu_font_family
      nerd-fonts.jetbrains-mono
    ];
    
    # Add these settings
    fontDir.enable = true;  # or fontDir.enable = true; in newer versions
    
    # Optional but recommended
    fontconfig = {
      enable = true;
      defaultFonts = {
        monospace = [ "JetBrainsMono" "FontAwesome" ];
        sansSerif = [ "Ubuntu" "Noto Sans" ];
        serif = [ "Ubuntu" "Noto Serif" ];
      };
    };
  };
}
