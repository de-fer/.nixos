# system/fonts.nix

{ config, pkgs, lib, ... }:

{
  fonts = {
    packages = with pkgs; [
      nerd-fonts.fira-code
    ];
    fontconfig = {
      antialias = true;
    };
  };
}
