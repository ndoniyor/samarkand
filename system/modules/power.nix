{ config, pkgs, ... }:
{
  powerManagement.enable = true;
  services.throttled.enable = true;
}