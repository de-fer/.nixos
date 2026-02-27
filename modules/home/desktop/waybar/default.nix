{ ... }:

{
  programs.waybar = {
    enable = true;
    systemd.enable = true;
    style = builtins.readFile ./style.css;
  };
  imports = [
    ./settings.nix
  ];
}
