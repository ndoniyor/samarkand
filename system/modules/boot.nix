{ pkgs, ...}: 
{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelModules = [ "msr" ];
  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
  };
}