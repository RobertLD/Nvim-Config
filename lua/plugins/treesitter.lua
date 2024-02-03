return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
      
      -- Installing basic AST support
      -- Python, Elixir, Lua
      local config = require("nvim-treesitter.configs")
      config.setup({
        ensure_installed = {"lua", "elixir", "python"},
        highlight = { enable = true },
        indent = { enable = true },
      })

      -- Open the file tree
      vim.keymap.set('n', '<leader>n', ':Neotree toggle right<CR>')

    end
}








