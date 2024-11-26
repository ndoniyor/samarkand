{ pkgs, ... }:
{
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 30;

        modules-left = [ "hyprland/window" "hyprland/workspaces" ];
        modules-center = [ ];
        modules-right = [ "pulseaudio" "backlight" "cpu" "memory" "network" "battery" "clock" ];

        "clock" = {
          format = "{:%I:%M %p  %a, %b %d}";
          tooltip = false;
        };
        "battery" = {
          format = "{icon} {capacity}%";
          format-icons = [ "󰁺" "󰁼" "󰁽" "󰂀" "󰁹" ];
          format-charging = "󰢝 {capacity}%";
          format-plugged = "󰂅 {capacity}%";
          states = {
            warning = 30;
            critical = 15;
          };
        };
        "network" = {
          format-wifi = "{icon} {essid}";
          format-icons = [ "󰤯" "󰤟" "󰤢" "󰤥" ];
          format-ethernet = "Connected";
          format-disconnected = "󰤭 Disconnected";
          tooltip-format = "{ifname}: {ipaddr}/{cidr}";
          on-click = "kitty nmtui";
        };
        "cpu" = {
          format = " {usage}%";
          interval = 10;
          tooltip = false;
        };

        "memory" = {
          format = "  {percentage}%";
          interval = 10;
          tooltip = false;
        };

        "backlight" = {
          format = "{icon} {percent}%";
          format-icons = [ "󰃟" ];
        };

        "hyprland/window" = {
          format = "{class}";
          rewrite = {
            "firefox" = "";
            "Code" = "󰨞";
            "kitty" = "";
            "org.kde.dolphin" = "";
            "Spotify" = "";
          };
        };

        "hyprland/workspaces" = {
          format = "{name}";
          sort-by-number = true;
        };

        "pulseaudio" = {
          format = "{icon} {volume}%";
          format-icons = {
            default = ["" "" ""];
          };
          format-muted = " 0%";
          on-click = "pavucontrol";
        };
      };
    };
    style = builtins.readFile ./config/hypr/waybar/styles.css;
  };
}
