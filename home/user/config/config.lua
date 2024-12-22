lvim.plugins = {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
  },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
}


lvim.colorscheme = "gruvbox"
lvim.builtin.treesitter.autotag.enable = true

vim.o.background = "dark"
vim.g.gruvbox_contrast_dark = "hard"
vim.g.gruvbox_italic = 1
vim.g.gruvbox_transparent_bg = 1
vim.opt.clipboard = "unnamedplus"
