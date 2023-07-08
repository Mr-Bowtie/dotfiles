return {
    "neovim/nvim-lspconfig",
    opts = {
        autoformat = false,
        servers = {
            solargraph = {
            --     settings = {
            --       formatting = true,
            --     },
              },
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
                filetypes = {"css", "eruby", "html", "javascript", "sass", "scss"},
              },
            },
        },
        -- setup = {
        --   jdtls = function(_, opts)
        --
        -- }
    },
}
