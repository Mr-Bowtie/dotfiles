
return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "mihyaeru21/nvim-lspconfig-bundler",
  },
  opts = {
    autoformat = false,
    servers = {
      tsserver = {
        settings = {
          javascript = {
            format = {
              baseIndentSize = 4,
              indentSize = 4,
            },
          },
        },
      },
      emmet_ls = {
        settings = {
          filetypes = { "css", "eruby", "html", "javascript", "sass", "scss" },
        },
      },
    },
    setup = {
      solargraph = function(_, opts)
        require('lspconfig-bundler').setup()
        require('lspconfig').solargraph.setup({})
      end
    },
  },
}
