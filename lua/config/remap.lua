vim.g.leadermap = "\\"

-- vim keymaps

vim.keymap.set("n", "<C-s>", ":w<CR>")

-- tree key maps
vim.keymap.set("n", "<leader>tt", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>tf", ":NvimTreeFocus<CR>")

-- telescope maps

local telescopeBuiltin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', telescopeBuiltin.find_files, {})
vim.keymap.set('n', '<leader>fg', telescopeBuiltin.live_grep, {})
vim.keymap.set('n', '<leader>fb', telescopeBuiltin.buffers, {})
vim.keymap.set('n', '<leader>fh', telescopeBuiltin.help_tags, {})


-- key map to lsp funcs

vim.keymap.set('i', '<S-TAB>', '<C-X><C-O>')
