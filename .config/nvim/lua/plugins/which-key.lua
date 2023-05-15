return {
  {
    "folke/which-key.nvim",
    opts = function()
      require("which-key").register({
        h = { name = "Harpoon" },
      }, { prefix = "<leader>" })
    end,
  },
}
