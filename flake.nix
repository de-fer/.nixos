{

  description = "My NixOS configuration";

  outputs = { self, nixpkgs, home-manager, ... }@inputs:
  let
    lib = nixpkgs.lib;
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in{
    nixosConfigurations = {
      laptop-pavilion = lib.nixosSystem {
        inherit system;
	      modules = [ ./hosts/laptop-pavilion/configuration.nix ];
      };
    };

    homeConfigurations = {
      de-fer = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
	      extraSpecialArgs = { inherit inputs; };
	      modules = [ 
	        ./home/de-fer.nix
	      ];
      };
    };
  };

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

}
