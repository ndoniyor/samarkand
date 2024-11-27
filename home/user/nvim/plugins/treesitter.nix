{ pkgs, ...}:
{
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
}
