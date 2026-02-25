{
  description = "My NixOS configuration";

  outputs = {
    self,
    nixpkgs,
    hyprland,
    stylix,
    nvf,
    home-manager,
    zen-browser,
    ...
  }@inputs: let
    lib = nixpkgs.lib;
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    nixosConfigurations = {

      laptop-pavilion = lib.nixosSystem {
        inherit system;
        specialArgs = { inherit inputs; };
	      modules = [
          ./hosts/laptop-pavilion/default.nix
          stylix.nixosModules.stylix
          nvf.nixosModules.default

          home-manager.nixosModules.home-manager {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.extraSpecialArgs = { inherit inputs; };

            home-manager.users.de-fer = import ./hosts/laptop-pavilion/home.nix;
          }

        ];
      };

    };
  };

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    hyprland.url = "github:hyprwm/Hyprland";
    
    stylix = {
      url = "github:nix-community/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nvf = {
      url = "github:NotAShelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.home-manager.follows = "home-manager";
    };
  };
}
