{ config, pkgs, lib, ...}:

{
  home.stateVersion = "25.11";

  home.packages = with pkgs; [
    firefox
  ];

  programs.git = {
    enable = true;
    settings = {
      user.name = "de-fer";
      user.email = "dm.chuenkov@gmail.com";
    };
  };

  imports = [
    ../../modules/home/default.nix
  ];
}
