local keymap = vim.keymap.set
local s = { silent = true }

vim.g.mapleader = " "

keymap("v", "<Leader>p", '"_dP') -- Paste without overwriting the default register
keymap("x", "y", [["+y]], s) -- Yank to the system clipboard in visual mode
keymap("n", "<leader>cd", '<cmd>lua vim.fn.chdir(vim.fn.expand("%:p:h"))<CR>')

-- ~/.config/nvim-new/lua/keymaps.lua
keymap("n", "<leader>ff", '<cmd>FzfLua files<CR>')
keymap("n", "<leader>fg", '<cmd>FzfLua live_grep<CR>')
