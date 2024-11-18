{
    description = "Doniyor's Home Manager Config";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/24.05";
        # Add unstable as separate input
        nixpkgs-unstable.url = "github:nixos/nixpkgs/nixpkgs-unstable";
	
        home-manager = {
            url = "github:nix-community/home-manager/release-24.05";
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };

    outputs = { self, nixpkgs, nixpkgs-unstable, home-manager, ... } @ inputs: let
        inherit (self) outputs;
        system = "x86_64-linux";
        
        overlays = [];
        config = {
            allowUnfree = true;
        };
        
        pkgs = import nixpkgs {
            inherit system overlays config;
        };
        unstable = import nixpkgs-unstable {
            inherit system overlays config;
        };
    in {
        nixosConfigurations = {
            nixos = nixpkgs.lib.nixosSystem {
                specialArgs = { inherit pkgs unstable; };
                modules = [ ./nixos/configuration.nix ];
            };
        };
        homeConfigurations = {
            "doniyor@nixos" = home-manager.lib.homeManagerConfiguration {
                pkgs = nixpkgs.legacyPackages.x86_64-linux;
                extraSpecialArgs = { inherit pkgs unstable; };
                modules = [ ./home-manager/home.nix ];
            };
        };
    };
}
