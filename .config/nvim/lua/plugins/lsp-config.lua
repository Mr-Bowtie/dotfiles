return {
    "neovim/nvim-lspconfig",
    opts = {
        autoformat = false,
        servers = {
            --   solargraph = {
            --     settings = {
            --       formatting = true,
            --     },
            --   },
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
        },
        -- setup = {
        --   jdtls = function(_, opts)
        --
        -- }
    },
}
