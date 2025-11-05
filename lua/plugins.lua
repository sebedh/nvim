vim.pack.add({
    { src = "https://github.com/nvim-lua/plenary.nvim" },
    { src = 'https://github.com/lewis6991/gitsigns.nvim', version = 'v1.0.2' },
    { src = 'https://github.com/nvim-mini/mini.nvim', version = 'stable' },
    { src = 'https://github.com/folke/snacks.nvim', version = 'v2.23.0' },
    { src = 'https://github.com/stevearc/oil.nvim', version = 'v2.15.0' },
    { src = 'https://github.com/mason-org/mason.nvim', version = 'v2.1.0' },
    { src = "https://github.com/ibhagwan/fzf-lua" },
    { src = "https://github.com/Saghen/blink.cmp", version = 'v1.7.0' },
    { src = "https://github.com/zbirenbaum/copilot.lua", version = 'master' },
    { src = "https://github.com/olimorris/codecompanion.nvim" },
    { src = "https://github.com/catppuccin/nvim", version = 'v1.11.0' },
})

require('mini.statusline').setup({})
require('gitsigns').setup({ signcolumn = false })
require('oil').setup({
    vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = "Open curr dir" }),
    view_options = {
        show_hidden = true
    },
})
require('mason').setup({})
require('fzf-lua').setup({})
require('blink.cmp').setup({
    signature = { enabled = true },
    keymap = {
        preset = 'default',
        ["<C-space>"] = {},
        ["<C-p>"] = {},
        ["<Tab>"] = {},
        ["<S-Tab>"] = {},
        ["<C-y>"] = { "show", "show_documentation", "hide_documentation" },
        ["<C-n>"] = { "select_and_accept" },
        ["<C-k>"] = { "select_prev", "fallback" },
        ["<C-j>"] = { "select_next", "fallback" },
        ["<C-b>"] = { "scroll_documentation_down", "fallback" },
        ["<C-f>"] = { "scroll_documentation_up", "fallback" },
        ["<C-l>"] = { "snippet_forward", "fallback" },
        ["<C-h>"] = { "snippet_backward", "fallback" },
    },
    appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = "normal",
    },

    completion = {
        documentation = {
            auto_show = true,
            auto_show_delay_ms = 200,
        }
    },

    cmdline = {
        keymap = {
            preset = 'inherit',
            ['<CR>'] = { 'accept_and_enter', 'fallback' },
        },
    },
    sources = { default = { 'lsp', 'path' } },
})
require('codecompanion').setup({

})
require('snacks').setup({
    animations = { enabled = false },
    indent = { enabled = true },
    input = { enabled = true },
    lazygit = { enabled = true, configure = true },
})
