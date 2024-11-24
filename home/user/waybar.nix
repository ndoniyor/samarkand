{ pkgs, ... }:
{
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 30;

        modules-left = [ "hyprland/workspaces" ];
        modules-center = [ ];
        modules-right = [ "cpu" "memory" "network" "battery" "clock" ];

        "hyprland/workspaces" = {
          format = "{name}";
          sort-by-number = true;
        };

        "clock" = {
          format = "{:%I:%M %p  %a, %b %d}";
          tooltip = false;
        };
        "battery" = {
          format = "{capacity}% {icon}";
          format-icons = [ "󰁺" "󰁼" "󰁽" "󰂀" "󰁹" ];
          format-charging = "{capacity}% 󰢝 ";
          format-plugged = "{capacity}% 󰂅 ";
          states = {
            warning = 30;
            critical = 15;
          };
        };
        "network" = {
          format-wifi = "{essid} {icon}";
          format-icons = [ "󰤯" "󰤟" "󰤢" "󰤥" ];
          format-ethernet = "Connected ";
          format-disconnected = "Disconnected 󰤭";
          tooltip-format = "{ifname}: {ipaddr}/{cidr}";
        };
        "cpu" = {
          format = "{usage}%  ";
          interval = 10;
          tooltip = false;
        };

        "memory" = {
          format = "{percentage}%  ";
          interval = 10;
          tooltip = false;
        };
      };
    };
    style = builtins.readFile ./config/hypr/waybar/styles.css;
  };
}
