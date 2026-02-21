{
  description = "My NixOS configuration";

  outputs = { self, nixpkgs, ... }:
  let
    lib = nixpkgs.lib;
  in {
    nixosConfigurations = {
      laptop-pavilion = lib.nixosSystem {
        system = "x86_64-linux";
	modules = [ ./configuration.nix ];
      };
    };
  };

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };
}
