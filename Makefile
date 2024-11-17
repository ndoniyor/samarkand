.PHONY: home
home:
	home-manager switch --flake .#doniyor@nixos

.PHONY: system
system:
	sudo nixos-rebuild switch --flake .#nixos

.PHONY: clean
clean:
	nix-collect-garbage -d