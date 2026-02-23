{ config, pkgs, lib, ...}:

{
  home.stateVersion = "25.11";

  home.packages = with pkgs; [
    # TTY
    git
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
