{ ... }:
{
  imports = builtins.concatLists [
    (map (f: ./common + "/${f}") [
      "nvf/default.nix"
      "amd.nix"
      "boot.nix"
      "kitty.nix"
      "users.nix"
    ])

    (map (f: ./desktop + "/${f}") [
      "display-manager.nix"
      "hyprland.nix"
      "wayland.nix"
    ])
  ];
}
