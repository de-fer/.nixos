# desktop/display-manager.nix

{ config, pkgs, lib, ... }:

{
  services.displayManager = {
    sddm = {
      enable = true;
      wayland.enable = true;
      theme = "where_is_my_sddm_theme";
    };  
    # defaultSession = "hyperland-uwsm";
  };
  
  environment.systemPackages = with pkgs; [
    where-is-my-sddm-theme
  ];
}
