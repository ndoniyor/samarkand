{ pkgs, ... }:
{
  imports = [
    ./plugins
  ];
  
  programs.nixvim = {
    enable = true;

    opts = {
      number = true; # Show line numbers
      relativenumber = true; # Show relative line numbers
      shiftwidth = 4; # Number of spaces for indentation
      expandtab = true; # Use spaces instead of tabs
      tabstop = 4; # Number of spaces a tab counts for
      ignorecase = true; # Case insensitive search
      smartcase = true; # Case sensitive when using uppercase
    };

    keymaps = [
      {
        mode = "n";
        key = "<leader>e";
        action = ":Neotree toggle<CR>";
        options.desc = "Toggle Explorer";
      }
      {
        mode = "n";
        key = "<leader>h";
        action = ":Neotree focus<CR>";
        options.desc = "Focus Explorer";
      }
    ];

    clipboard = {
      register = "unnamedplus";

      providers.wl-copy.enable = true;
    };

    vimAlias = true;

    colorschemes.gruvbox = {
      enable = true;
      settings = {
        contrast_dark = "hard"; # Options: soft, medium, hard
        bold = true;
        transparent_mode = false;
      };
    };

    globals.gruvbox_dark_mode = true;
    globals.mapleader = " ";

    plugins.treesitter = {
      enable = true;

      grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
        nix
      ];
      settings = {
        indent.enable = true;
        ensure_installed = [
          "nix"
        ];
      };

    };

    plugins.lsp = {
      enable = true;
      servers.nil_ls = {
        enable = true;
        settings = {
          formatting.command = [ "nixpkgs-fmt" ];
        };
      };
    };

    plugins.telescope = {
      enable = true;
      keymaps = {
        "<leader>ff" = "find_files";
        "<leader>fg" = "live_grep";
        "<leader>fb" = "buffers";
        "<leader>fh" = "help_tags";
      };
    };

    plugins.neo-tree = {
      enable = true;
    };
  };

  home.packages = with pkgs; [
    ripgrep
    wl-clipboard
    eza
    tldr
    fd
  ];
}
