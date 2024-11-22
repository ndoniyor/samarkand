{...}:
{
  services= {
    libinput.enable = true;
    xserver = {
      enable = true;
      displayManager.sddm.enable = true;
#      displayManager.lightdm.wayland = true;
    };
    desktopManager.plasma6.enable = true;
  };
}
