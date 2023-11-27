return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<leader>s.",
        function()
          require("telescope.builtin").find_files({ prompt_title = "< Configs >", cwd = "~/.config", hidden = true })
        end,
        desc = "Search Dotfiles",
      },
      {
        "<leader>sO",
        ":Telescope oldfiles <CR>",
        desc = "Search previously opened files (Oldfiles)",
      },
      {
        "<leader>ws",
        function()
          require("telescope.builtin").find_files({ prompt_title = "< VimWiki >", cwd = "~/vimwiki/", hidden = true })
        end,
        desc = "Search Vimwiki",
      },
    },
    dependencies = {
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        config = function()
          require("telescope").load_extension("fzf")
        end,
      },
      {
        "ThePrimeagen/harpoon",
        config = function()
          require("telescope").load_extension("harpoon")
        end,
      },
    },
  },
}
