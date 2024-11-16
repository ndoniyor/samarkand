{
    description = "Doniyor's Home Manager Config";

    inputs = {
        nixpkgs.url = "nixpkgs/24.05";
        home-manager = {
            url = "github:nix-community/home-manager/release-24.05";
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };

    outputs = { 
        self,
        nixpkgs,
        home-manager,
        ...
    }   @ inputs: let
        inherit (self) outputs;
    in {
            nixosConfigurations = {
                nixos = nixpkgs.lib.nixosSystem {
                    specialArgs = { inherit inputs outputs; };
                    modules = [ ./nixos/configuration.nix ];
                };
            };

            homeConfigurations = {
                "doniyor@nixos" = home-manager.lib.homeManagerConfiguration {
                    pkgs = nixpkgs.legacyPackages.x86_64-linux;
                    extraSpecialArgs = { inherit inputs outputs; };
                    modules = [ ./home-manager/home.nix ];
                };
            };
        };
}
