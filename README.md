# NixOS Configuration

This repository contains my personal NixOS system configuration using flakes and home-manager.

## Installation

1. Clone this repository:
```bash
git clone https://github.com/ndoniyor/samarkand.git
```

2. Copy your hardware configuration:
```bash
sudo cp /etc/nixos/hardware-configuration.nix nixos/
```

3. Build and switch to the configuration:
```bash
# System configuration
make system

# Home configuration
make home
```

## Features

- **Window Manager**: Hyprland
- **Terminal**: Kitty
- **Shell**: Zsh with Powerlevel10k
- **Packages**:
  - Development tools
  - Media applications
  - System utilities

## Customization

1. Edit `nixos/configuration.nix` for system-wide settings
2. Edit `home-manager/home.nix` for user-specific settings
3. Modify modules in the `modules/` directory for specific applications
4. Add dotfiles to the `dotfiles/` directory

## Common Commands

```bash
# Rebuild NixOS
make system

# Update home-manager configuration
make home

# Update flake locks
nix flake update

# Clean up old generations
make clean
```

## Tips

- Keep the system and home-manager configurations separate
- Use modules to organize related configurations
- Store sensitive data in a separate private repository
- Regularly update flake inputs
- Commit changes to git to track your configuration history

## Contributing

Feel free to take inspiration from this configuration or submit improvements via pull requests.

## License

[MIT License](LICENSE)

## Acknowledgments

- [NixOS](https://nixos.org/)
- [Home Manager](https://github.com/nix-community/home-manager)
- [Hyprland](https://hyprland.org/)
```