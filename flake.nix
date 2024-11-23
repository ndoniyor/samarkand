{
  description = "Doniyor's Parcha";

  inputs = {
    #nixpkgs.url = "github:nixos/nixpkgs/24.05";
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland = {
      url = "github:hyprwm/Hyprland";
    };

    plasma-manager = {
      url = "github:nix-community/plasma-manager";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.home-manager.follows = "home-manager";
    };
  };

  outputs = { 
      self, 
      nixpkgs, 
      home-manager, 
      plasma-manager,
      hyprland,
      ... 
    }@inputs:
    let
      lib = nixpkgs.lib;
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      plasma-manager-module = plasma-manager.homeManagerModules.plasma-manager;
    in
    {
      nixosConfigurations = {
        nixos = lib.nixosSystem {
          inherit system;
          specialArgs = { inherit inputs; };
          modules = [ ./system/configuration.nix ];
        };
      };
      homeConfigurations = {
        "doniyor@nixos" = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          extraSpecialArgs = { inherit inputs; };
          modules = [ 
            ./home
            plasma-manager-module
          ];
        };
      };
    };
}
