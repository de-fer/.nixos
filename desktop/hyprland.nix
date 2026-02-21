# desktop/hyprland.nix

{ config, pkgs, lib, ... }:

{
  programs.hyprland = {
    enable = true;
    withUWSM = true;
    xwayland.enable = true;
  };

  xdg.portal.extraPortals = with pkgs; [
    xdg-desktop-portal-hyprland
  ];

  environment = {
    systemPackages = with pkgs; [
      hyprpaper # wallpaper
      hyprlock  # lockscreen
      hypridle
      hyprpicker
      hyprpolkitagent
      hyprlauncher
    ];
  };
}
