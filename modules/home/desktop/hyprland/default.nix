{ config, pkgs, lib, ... }:

{
  wayland.windowManager.hyprland = {
    # Включает hyprland для home-manager (подключённого как модуль NixOS)
    enable = true;
    package = null;
    portalPackage = null;
    systemd.enable = true;
  };

  home.packages = with pkgs; [
  ];

  imports = [
    ./autoexec.nix
    ./bind.nix
    ./settings.nix
  ];
}
