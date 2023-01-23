vim.g.leadermap = "\\"

-- vim keymaps
vim.keymap.set("n", "<leader>dp", "T(vt)d")
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
vim.keymap.set('n', '<leader>fr', ':Telescope lsp_references<CR>', {})


-- key map to lsp funcs

vim.keymap.set('i', '<S-TAB>', '<C-X><C-O>')


-- tabs

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<C-,>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<C-.>', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<C-<>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<C->>', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<C-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<C-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<C-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<C-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<C-5>', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<C-6>', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<C-7>', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<C-8>', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<C-9>', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<C-0>', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
map('n', '<C-c>', '<Cmd>BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
-- Lua

vim.keymap.set("n", "<leader>ex", "<cmd>TroubleToggle<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>",
  {silent = true, noremap = true}
)

-- Floaterm.
vim.cmd([[
  tnoremap    <silent>    <leader>fn          <C-\><C-n>:FloatermNew<CR>
  tnoremap    <silent>    <leader><left>     <C-\><C-n>:FloatermPrev<CR>
  tnoremap    <silent>    <leader><right>    <C-\><C-n>:FloatermNext<CR>
  nnoremap    <silent>    <leader><up>       :FloatermToggle<CR>
  tnoremap    <silent>    <leader><down>     <C-\><C-n>:FloatermToggle<CR>
]])

-- Spawn lazygit
vim.keymap.set('n', '<leader>gg', ':FloatermNew --height=0.7 --width=0.9 --wintype=float --name=lazygit --autoclose=2 lazygit<CR>')
vim.keymap.set('n', '<leader>gf', ':FloatermNew --height=0.7 --width=0.9 --wintype=float --name=ranger --autoclose=2 ranger<CR>')


-- dap debugger
vim.keymap.set('n', '<leader>dt', ':lua require"dap".toggle_breakpoint()<CR>')
vim.keymap.set('n', '<leader>dc', ':lua require"dap".continue()<CR>')
vim.keymap.set('n', '<leader>di', ':lua require"dap".step_into()<CR>')
-- remap to toggle dapui
vim.keymap.set('n', '<leader>dd', ':lua require"dapui".toggle()<CR>')
