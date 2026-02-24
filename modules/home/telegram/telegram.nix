{ config, pkgs, lib,... }:

{
  home.packages = with pkgs; [
    # telegram-desktop
    ayugram-desktop
  ];
}
