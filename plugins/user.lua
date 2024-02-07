return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },:
  {
    "echasnovski/mini.move",
    lazy = false,
    version = false,
    config = function()
      require("mini.move").setup {
        mappings = {
          -- Move visual selection in Visual mode. Defaults are Alt (Meta) + hjkl.
          left = "<leader>mh",
          right = "<leader>ml",
          down = "<leader>mj",
          up = "<leader>mk",

          -- Move current line in Normal mode
          line_left = "<leader>mh",
          line_right = "<leader>ml",
          line_down = "<leader>mj",
          line_up = "<leader>mk",
        },
      }
    end,
  },
  {
    "ThePrimeagen/vim-be-good",
    lazy = false,
  },
  {
    "stevearc/oil.nvim",
    --opts = {},
    -- Optional dependencies
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("oil").setup()
      vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
}
