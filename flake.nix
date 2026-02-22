{

  description = "My NixOS configuration";

  outputs = {
    self,
    nixpkgs,
    home-manager,
    stylix,
    nvf,
    ...
  }@inputs:
  let
    lib = nixpkgs.lib;
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in{
    nixosConfigurations = {
      laptop-pavilion = lib.nixosSystem {
        inherit system;
	      modules = [
          stylix.nixosModules.stylix
          nvf.nixosModules.default
          ./hosts/laptop-pavilion/configuration.nix
        ];
      };
    };

    homeConfigurations = {
      de-fer = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
	      extraSpecialArgs = { inherit inputs; };
	      modules = [ 
          stylix.homeModules.stylix
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
    
    stylix = {
      url = "github:nix-community/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nvf = {
      url = "github:NotAShelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

}
