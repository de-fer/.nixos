# programs/kitty.nix

{ config, pkgs, lib, ... }:

{
  environment.systemPackages = [ pkgs.kitty ];
}
