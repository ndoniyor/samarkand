{ pkgs, ... }:
{
  boot = {
    loader = {
      # Disable systemd-boot
      systemd-boot.enable = false;

      efi = {
        canTouchEfiVariables = true;
        efiSysMountPoint = "/boot";
      };

      # Enable GRUB
      grub = {
        enable = true;
        devices = [ "nodev" ];
        efiSupport = true;
        useOSProber = true;
        theme = .././assets/nix-grub;
      };
      timeout = 0;
    };

    consoleLogLevel = 0;
    initrd.verbose = false;
    kernelParams = [
      "quiet"
      "splash"
      "boot.shell_on_fail"
      "loglevel=3"
      "rd.systemd.show_status=false"
      "rd.udev.log_level=3"
      "udev.log_priority=3"
    ];
    kernelModules = [ "msr" ];
  };
}
