let configDir = ../config;
in
{
  home.file = {
    ".config/kitty".source = "${configDir}/kitty";
    ".config/hypr".source = "${configDir}/hypr";
  }
}