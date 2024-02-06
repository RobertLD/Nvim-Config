return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "elixirls",
                }
            })
        end
    },
    {
        "folke/trouble.nvim",
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        opts = {},
        config = function()
            vim.keymap.set('n', '<leader>tt', ':TroubleToggle<CR>')
        end
    },
    {
        "neovim/nvim-lspconfig",

        config = function()
            local lspconfig = require('lspconfig')
            lspconfig.lua_ls.setup {}
            lspconfig.elixirls.setup {
            cmd = {"/Users/rderienzo/.local/share/nvim/mason/packages/elixir-ls/language_server.sh"}
            }

            --LSP keymaps
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
            vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
            vim.keymap.set({ 'n', 'v' }, '<leader>.', vim.lsp.buf.code_action, {})
        end
    }

}
