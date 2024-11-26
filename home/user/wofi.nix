{ config, lib, pkgs, ...}:
{
  programs.wofi.settings = {
    mode = "drun,run";

    width = "50%";
    height = "40%";
    location = "center";
    prompt = "Search";

    matching = "fuzzy";
    insenstive = true;

    allow_images = true;
    gtk_dark = true;

    "drun_display_generic" = true;
    "run-always_parse_args" = true;
    "run-show_all" = false;
  };
}