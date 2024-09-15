return {
  -- auto-resize windows
  {
    "anuvyklack/windows.nvim",
    enabled = true,
    event = "WinNew",
    dependencies = {
      { "anuvyklack/middleclass" },
      { "anuvyklack/animation.nvim", enabled = true },
    },
    keys = { { "<leader>m", "<cmd>WindowsMaximize<cr>", desc = "Zoom" } },
    config = function()
      vim.o.winwidth = 5
      vim.o.equalalways = false
      require("windows").setup({
        animation = { enable = true, duration = 150 },
      })
    end,
  },
  -- lualine
  {
    "nvim-lualine/lualine.nvim",
    opts = function()
      require("lualine").setup({
        options = {
          theme = "tokyonight",
          section_separators = { left = "", right = "" },
          component_separators = { left = "", right = "" },
        },
      })
    end,
  },
  -- nvim-scrollbar
  {
    "petertriho/nvim-scrollbar",
    config = function()
      local colors = require("tokyonight.colors").setup()

      require("scrollbar").setup({
        handle = {
          color = colors.bg_highlight,
        },
        marks = {
          Search = { color = colors.orange },
          Error = { color = colors.error },
          Warn = { color = colors.warning },
          Info = { color = colors.info },
          Hint = { color = colors.hint },
          Misc = { color = colors.purple },
        },
        excluded_filetypes = {
          "neo-tree",
          "neo-tree-popup",
          "prompt",
          "TelescopePrompt",
          "noice",
        },
      })
    end,
  },
}
