{ config, pkgs, lib, ... }:

{
  wayland.windowManager.hyprland.settings = {
    exec-once = [
      # === clipboard === 
      "wl-clip-presist --clipboard regular"
      "wl-paste --watch cliphist store"
    ];
  };
}
