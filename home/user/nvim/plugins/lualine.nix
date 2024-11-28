{ pkgs, ...}:
{
    programs.nixvim = {
        plugins = {
            bufferline = {
                enable = true;
                diagnostics = "nvim_lsp";
                separatorStyle = "slant";
            };
            lualine = {
                enable = true;
                theme = "gruvbox";
                componentSeparators = {
                    left = "|";
                    right = "|";
                };
                sectionSeparators = {
                    left = "";
                    right = "";
                };
            };
        };
    };
}
