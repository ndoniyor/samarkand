let 
  configDir = builtins.toString ./config;
  assetsDir = builtins.toString ../../assets;
in
{
  home.file = {
    ".config/kitty".source = "${configDir}/kitty";
  #   ".config/hypr/hyprland.conf".source = "${configDir}/hypr/hyprland.conf";
    ".config/hypr/hyprpaper.conf".source = "${configDir}/hypr/hyprpaper.conf";
    ".config/lvim/config.lua".source = "${configDir}/config.lua";
    ".icons/capitaine_gruvbox".source = "${assetsDir}/capitaine_gruvbox";
  };
}
