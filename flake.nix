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

    nixos-06cb-009a-fingerprint-sensor = {
      url = "github:ahbnr/nixos-06cb-009a-fingerprint-sensor";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland.url = "github:hyprwm/Hyprland";
  };

  outputs = { self, nixpkgs, nixpkgs-unstable, home-manager, nixos-06cb-009a-fingerprint-sensor, hyprland, ... }:
    let
      inherit (self) outputs;
      system = "x86_64-linux";

      overlays = [ ];
      config = {
        allowUnfree = true;
      };

      pkgs = import nixpkgs {
        inherit system overlays config;
      };

      unstable = import nixpkgs-unstable {
        inherit system overlays config;
      };

      fpSensorModule = nixos-06cb-009a-fingerprint-sensor;
    in
    {
      nixosConfigurations = {
        nixos = nixpkgs.lib.nixosSystem {
          specialArgs = { inherit pkgs unstable hyprland fpSensorModule; };
          modules = [ ./nixos/configuration.nix ];
        };
      };
      homeConfigurations = {
        "doniyor@nixos" = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-linux;
          extraSpecialArgs = { inherit pkgs unstable; };
          modules = [ 
            ./home-manager/home.nix
#	    (import ./modules/hyprland.nix { inherit pkgs hyprland;})
          ];
        };
      };
    };
}
