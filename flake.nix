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
    } @ inputs: let
            lib = nixpkgs.lib;
            system = "x86_64-linux";
            pkgs = import nixpkgs { inherit system; };
        in {
            nixosConfigurations = {
                nixos = lib.nixosSystem {
                    specialArgs = { inherit inputs outputs; };
                    modules = [ ./nixos/configuration.nix ];
                };
            };

            homeConfigurations = {
                "doniyor@nixos" = home-manager.lib.homeManagerConfiguration {
                    inherit pkgs;
                    extraSpecialArgs = { inherit inputs outputs; };
                    modules = [ ./home-manager/home.nix ];
                };
            };
        };
}
