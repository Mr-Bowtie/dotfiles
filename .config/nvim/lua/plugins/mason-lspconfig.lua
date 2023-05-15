return {
  "williamboman/mason-lspconfig.nvim",
  opts = {
    setup_handlers = {
      function(server_name)
        require("lspconfig")[server_name].setup({})
      end,
    },
  },
}
