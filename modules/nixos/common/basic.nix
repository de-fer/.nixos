{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  time.timeZone = "Europe/Moscow";

  environment.systemPackages = with pkgs; [
    wget
    curl
    git
    lazygit
    brightnessctl
  ];
}
