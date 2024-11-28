{ ... }:
{
  programs.nixvim = {
    plugins = {
      cmp = {
        enable = true;
        settings = {
          mapping = {
            "<C-p>" = "cmp.mapping.select_prev_item()";
            "<C-n>" = "cmp.mapping.select_next_item()";
            "<C-d>" = "cmp.mapping.scroll_docs(-4)";
            "<C-f>" = "cmp.mapping.scroll_docs(4)";
            "<C-Space>" = "cmp.mapping.complete()";
            "<C-e>" = "cmp.mapping.close()";
            "<CR>" = "cmp.mapping.confirm({ select = true })";
          };
          sources = [
            { name = "path"; }                # file paths
            { name = "nvim_lsp"; }           # from language server
            { name = "buffer"; }             # text within current buffer
            { name = "nvim_lsp_signature_help"; }  # display function signatures
          ];
        };
      };
    };
  };
}
