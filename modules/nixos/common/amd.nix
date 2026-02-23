# hardware/amd.nix

{ config, pkgs, lib, ... }:

{
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  boot = {
    initrd.kernelModules = [ "amdgpu" ];
  };

  environment.sessionVariables = {
    GBMBACKEND = "amdgpu";
  };

  environment.systemPackages = with pkgs; [
    libva-utils # vainfo
    vulkan-tools # vkcube, vulkaninfo
    mesa-demos # glxgears, glxinfo
  ];
}
