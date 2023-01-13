require("config")
require("packer")
require'lspconfig'.pyright.setup{}
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])
