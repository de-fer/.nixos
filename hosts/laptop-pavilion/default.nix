{ config, lib, pkgs, ... }:

{
  networking.hostName = "laptop-pavilion";
  system.stateVersion = "25.11"; # Did you read the comment?

  # nix.settings.experimental-features = [ "nix-command" "flakes" ];

  imports = [
    ./hardware-configuration.nix
    ../../modules/nixos/default.nix
  ];
}
