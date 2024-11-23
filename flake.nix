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
      url = "github:hyprwm/Hyprland?submodules=1";
    };
  };

  outputs = { 
      self, 
      nixpkgs, 
      home-manager, 
      hyprland,
      ... 
    }@inputs:
    let
      lib = nixpkgs.lib;
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
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
          ];
        };
      };
    };
}
