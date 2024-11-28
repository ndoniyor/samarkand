{ pkgs, ...}:
{
    programs.nixvim = {
        plugins = {
            bufferline = {
                enable = true;
            };
            lualine = {
                enable = true;
                settings.options = {
                    theme = "gruvbox";
                    diagnostics = "nvim_lsp";
                    separatorStyle = "slant";
                    component_separators = {
                        left = "|";
                        right = "|";
                    };
                    section_separators = {
                        left = "";
                        right = "";
                    };
                };
            };
        };
    };
}
