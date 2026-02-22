# home/de-fer.nix
{ config, pkgs, lib, ...}:

{
  programs.home-manager.enable = true;

  # Basic
  home.username = "de-fer";
  home.homeDirectory = "/home/de-fer";
  home.stateVersion = "25.11";

  home.packages = with pkgs; [
    # TTY
    git
    lazygit

    # Programs
    firefox
  ];

  programs.git = {
    enable = true;
    userName = "de-fer";
    userEmail = "dm.chuenkov@gmail.com";
  };

  imports = [
  ];
}
