{...}:
{
    imports = [
        ./treesitter.nix
        ./neo-tree.nix
        ./cmp.nix
        ./lualine.nix        
        ./lazygit.nix
    ];
    programs.nixvim = {
        plugins = {
            web-devicons.enable = true;
        };
    };
}
