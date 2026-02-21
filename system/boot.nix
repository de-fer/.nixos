# system/boot.nix
{ comfig, pkgs, lib, ...}:

{
  # GRUB2 bootloader
  # for custom configuratiable grub
  # it make grub.cfg for NixOS
  # include it as configfile

  boot.loader = {
    grub = {
      enable = true;
      device = "nodev";
      efiSupport = false;
      configurationLimit = 20;
    };

    efi = {
      canTouchEfiVariables = false;
    };
  };
}
