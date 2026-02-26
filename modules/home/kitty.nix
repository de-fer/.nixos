# programs/kitty.nix

{ config, pkgs, lib, ... }:
{
  programs.kitty = {
    enable = true;
    settings = {
      shell = "zsh";
      scrollbar = "never";
      confirm_os_window_close = 0;
      sync_to_monitor = false;
    };
  };
}
