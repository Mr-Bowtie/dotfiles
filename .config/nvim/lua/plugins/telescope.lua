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
        "<leader>sp",
        function()
          require("telescope.builtin").find_files({ prompt_title = "< VimWiki >", cwd = "~/vimwiki/", hidden = true })
          require("telescope").extensions.project.project({ display_type = "full" })
        end,
        desc = "Search Vimwiki",
        desc = "Search projects",
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
