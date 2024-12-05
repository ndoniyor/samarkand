{ pkgs, ... }:
{
  environment.systemPackages = [ pkgs.capitaine-cursors-themed.gruvbox ];
  system.nixos.settings = {
    gtk.cursorTheme.name = "Capitaine Cursors Gruvbox";
    gtk.cursorTheme.package = pkgs.capitaine-cursors-themed.gruvbox;
  };
}
