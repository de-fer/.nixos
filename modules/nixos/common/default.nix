{ ... }:

{
  imports = [
    ./nvf/default.nix
    ./vpn/default.nix
    ./basic.nix
    ./boot.nix
    ./graphic_hardware.nix
    ./network.nix
    ./pipewire.nix
    ./stylix.nix
    ./users.nix
  ];
}
