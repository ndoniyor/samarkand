{...}:
{
  services= {
    libinput.enable = true;
    displayManager.sddm = {
      enable = true;
      wayland.enable = true;
    };
    xserver.enable = true;
    desktopManager.plasma6.enable = true;
  };
}
