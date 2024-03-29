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
          left = "<S-h>",
          right = "<S-l>",
          down = "<S-j>",
          up = "<S-k>",

          line_left = "<S-h>",
          line_right = "<S-l>",
          line_down = "<S-j>",
          line_up = "<S-k>",
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
