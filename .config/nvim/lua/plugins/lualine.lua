return {
  "nvim-lualine/lualine.nvim",
  opts = {
    winbar = {
      lualine_c = { { "filename", path = 1 } },
    },
    inactive_winbar = {
      lualine_c = { { "filename", path = 1 } },
    },
  },
}
