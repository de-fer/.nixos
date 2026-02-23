# desktop/wayland.nix

{ config, pkgs, lib, ... }:

{
 xdg.portal = {
   enable = true;
   extraPortals = with pkgs; [
     xdg-desktop-portal-gtk
   ];
 };
 
 environment.sessionVariables = {
   NIXOS_OZONE_WL = "1";
   ELECTRON_OZONE_PLATFORM_HINT = "wayland";

   QT_QPA_PLATFORM = "wayland";
   QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";
 };

 environment.systemPackages = with pkgs; [
   # Basic wayland-utils
   wl-clipboard
   wl-clip-persist
   cliphist

   dunst
   waybar
   wofi

   brightnessctl
   # pavucontrol
   # playerctl
 ];
}
