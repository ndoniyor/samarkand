{...}:
{
  services= {
    displayManager.sddm = {
      enable = true;
    };
    xserver.enable = true;
  };

  services.desktopManager.plasma6.enable = true;
}