{ pkgs, inputs, ... }:

{
  imports = [
    inputs.zen-browser.homeModules.default
  ];

  programs.zen-browser = {
    enable = true;

    profiles.default = {
      isDefault = true;
      settings = {};
    };
  };

  stylix.targets.zen-browser.profileNames = [
    "default"
  ];
}
