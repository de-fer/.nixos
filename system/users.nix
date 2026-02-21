# system/users.nix
{ config, pkgs, lib, ... }:

{
  # users
  users.users.de-fer = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "audio" "video" ];
  };

  # some settings
  users = {
    # mutableUsers = false;
  };
  security.sudo.wheelNeedsPassword = false; # disable sudo password
}
