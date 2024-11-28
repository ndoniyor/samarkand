{ pkgs, ... }:
{
    programs.nixvim = {
        plugins.lazygit = {
            enable = true;
        };
        
        keymaps = [
            {
                mode = "n";
                key = "<leader>lg";
                action = ":LazyGit<CR>";
                options = {
                    desc = "Open LazyGit";
                    silent = true;
                };
            }
        ];
    };
}
