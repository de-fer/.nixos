{ config, pkgs, lib, ... }:

{
  wayland.windowManager.hyprland.settings = {
    exec-once = [
      "waybar"                #
      "hyprpaper"             #
      "nm-applet --indicator" # настройка сети в вайбаре
      # === clipboard === 
      "wl-clip-presist --clipboard regular"
      "wl-paste --watch cliphist store"
    ];
  };
}
