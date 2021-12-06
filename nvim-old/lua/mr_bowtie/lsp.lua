-- require'lspinstall'.setup() -- important

-- local servers = require'lspinstall'.installed_servers()
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp
                                                          .with(vim.lsp.diagnostic.on_publish_diagnostics, {virtual_text = true, underline = false})

require('lspconfig').solargraph.setup {capabilities = capabilities}

local sumneko_binary = "/home/admin/.config/nvim/lua-language-server/bin/Linux/lua-language-server"
local sumneko_root_path = "/home/admin/.config/nvim/lua-language-server"

require('lspconfig').sumneko_lua.setup {
    capabilities = capabilities,
    cmd = {sumneko_binary, "-E", sumneko_root_path .. '/main.lua'},
    settings = {
        Lua = {
            runtime = {version = 'LuaJIT', path = vim.split(package.path, ';')},
            diagnostics = {globals = {'vim'}},
            workspace = {library = {[vim.fn.expand('$VIMRUNTIME/lua')] = true, [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true}, maxPreload = 10000, preloadFileSize = 10000}
        }
    }
}

require"lspconfig".efm.setup {
    capabilities = capabilities,
    init_options = {documentFormatting = true},
    filetypes = {"lua"},
    settings = {
        rootMarkers = {".git/"},
        languages = {lua = {{formatCommand = "lua-format -i --column-limit=150 --break-after-table-lb", formatStdin = true}}}
    }
}
