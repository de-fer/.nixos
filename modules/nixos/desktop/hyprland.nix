{ config, pkgs, lib, inputs, ... }:

{
  programs.hyprland = {
    enable = true;
    withUWSM = true;
    package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
    portalPackage = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;
  };

  # xdg.portal.extraPortals = with pkgs; [
  #   xdg-desktop-portal-hyprland
  # ];

  environment.systemPackages = with pkgs; [
    waybar       # панелька
    hyprpaper    # обои
    hyprshot     # скриншоты
    hyprlock     # экран блокировки
    hypridle     # управление сномс
    hyprlauncher # запускалка
    nautilus     # проводник
    networkmanagerapplet # настрйоки интернета
  ];
}
