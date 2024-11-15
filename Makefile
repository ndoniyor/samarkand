.PHONY: update
update:
	sudo nixos-rebuild switch --flake .#nixos
	

.PHONY: home
home:
	home-manager switch --flake .#doniyor@nixos

.PHONY: clean
clean:
	nix-collect-garbage -d