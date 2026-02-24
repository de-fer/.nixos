{ ... }:
{
  imports = builtins.concatLists [
    (map (f: ./common + "/${f}") [
      "nvf/default.nix"
      "vpn/default.nix"
      "amd.nix"
      "boot.nix"
      "users.nix"
    ])

    [ ./desktop/default.nix ]
  ];
}
