{
  description = "Doniyor's Parcha";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland.url = "github:hyprwm/Hyprland?submodules=1";
    stylix.url = "github:danth/stylix";
  };

  outputs = { self, nixpkgs, home-manager, hyprland, stylix, ... }@inputs:
    let
      lib = nixpkgs.lib;
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      username = "doniyor";
    in
    {
      nixosConfigurations = {
        nixos = lib.nixosSystem {
          inherit system;
          specialArgs = { inherit inputs; };
          modules = [
            ./system/configuration.nix
            stylix.nixosModules.stylix
          ];
        };
      };

      homeConfigurations = {
        "doniyor@nixos" = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          extraSpecialArgs = { inherit inputs username; };
          modules = [
            stylix.homeManagerModules.stylix
            ./home
          ];
        };
      };
    };
}
