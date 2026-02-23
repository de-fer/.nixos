# programs/kitty.nix

{ config, pkgs, lib, ... }:
{
  programs.kitty = {
    enable = true;
    # settings = {};
  };
  # stylix.targets.kitty.enable = true;
}
