{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    hiddify-app
  ];
}
