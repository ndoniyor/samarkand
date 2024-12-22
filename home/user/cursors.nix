{ pkgs, ... }:
{
  home.pointerCursor = {
    name = "Capitaine Cursors Gruvbox";
    package = pkgs.capitaine-cursors;
    size = 24; # Adjust size as needed
    gtk.enable = true;
    x11.enable = true;
  };

  # If you need GTK theme integration
  gtk = {
    enable = true;
    cursorTheme = {
      name = "Capitaine Cursors Gruvbox";
      package = pkgs.capitaine-cursors;
    };
  };
}
