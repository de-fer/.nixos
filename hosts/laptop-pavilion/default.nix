# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{ config, lib, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    # nixos modules
    ../../modules/nixos/default.nix
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  nixpkgs.config.allowUnfree = true;

  networking.hostName = "laptop-pavilion";

  # Configure network connections interactively with nmcli or nmtui.
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Europe/Moscow";

  # List packages installed in system profile.
  # You can use https://search.nixos.org/ to find more packages (and options).
  environment.systemPackages = with pkgs; [
    wget
    curl
    git
    lazygit
  ];

  networking.firewall.enable = false;

  stylix = {
    enable = true;
    polarity = "dark";
    # base16Scheme = "${pkgs.base16-schemes}/share/themes/tokyo-night-storm.yaml";
    # base16Scheme = "${pkgs.base16-schemes}/share/themes/ayu-mirage.yaml";
    # base16Scheme = "${pkgs.base16-schemes}/share/themes/3024.yaml";
    # base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark.yaml";
    base16Scheme = "${pkgs.base16-schemes}/share/themes/monokai.yaml";
    fonts = {
      monospace = {
        package = pkgs.nerd-fonts.fira-code;
        name = "FiraCode Nerd Font";
      };

      serif = {
        package = pkgs.dejavu_fonts;
        name = "DejaVu Serif";
      };

      sansSerif = {
        package = pkgs.dejavu_fonts;
        name = "DejaVu Sans";
      };
    };
  };

  system.stateVersion = "25.11"; # Did you read the comment?

}

