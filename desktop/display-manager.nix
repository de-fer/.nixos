# desktop/display-manager.nix

{ config, pkgs, lib, ... }:

{
  services.displayManager = {
    sddm = {
      enable = true;
      wayland.enable = true;
      theme = "sddm-astronaut-theme";

      extraPackages = with pkgs.kdePackages; [
        qtmultimedia
        qt5compat
        qtsvg
      ];
    };  
  };
  
  environment.systemPackages = with pkgs; [
    sddm-astronaut
  ];
}
