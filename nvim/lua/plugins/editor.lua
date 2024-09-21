return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    config = function()
      require("neo-tree").setup({
        window = {
          width = 25,
        },
      })
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<leader><space>",
        LazyVim.pick("files", { root = false }),
        desc = "Find Files (cwd)",
      },
    },
  },
}
