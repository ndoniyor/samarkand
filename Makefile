.PHONY: update
update:
	home-manager switch --flake .#doniyor

.PHONY: clean
clean:
	nix-collect-garbage -d