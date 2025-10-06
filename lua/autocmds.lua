local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- Highlight yanked text
local highlight_group = augroup('YankHighlight', { clear = true })
autocmd('TextYankPost', {
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({ timeout = 170 })
    end,
    group = highlight_group,
})

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local opts = { buffer = args.buf }
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts) -- Go to definition
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)       -- Hover info
    end,
})
