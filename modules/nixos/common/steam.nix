{ pkgs, ... }:

{
  programs.steam = {
    enable = true;
    dedicatedServer.openFirewall = true;
    localNetworkGameTransfers.openFirewall = true;
  };

  environment.systemPackages = with pkgs; [
    mangohud
  ];

  programs.gamemode.enable = true;
  # gamemoderun mangohud %command%
}
