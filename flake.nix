{
    description = "Doniyor's Home Manager Config"

    inputs = {
        nixpkgs.url = "nixpkgs/24.05";
        home-manager = {
            url = "github:nix-community/home-manager/release/24.05";
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };

    outputs = { nixpkgs, home-manager, ...}:
        let
            lib = nixpkgs.lib;
            system = "x86_64-linux";
            pkgs = import nixpkgs { inherit system; };
        in {
            homeConfigurations = {
                doniyor = home-manager.lib.homeManagerConfiguration {
                    inherit pkgs;
                    modules = [ ./home.nix ];
                };
            };
        };
}