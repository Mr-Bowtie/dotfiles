local sumneko_binary = "/home/admin/.config/nvim/lua-language-server/bin/Linux/lua-language-server"
local sumneko_root_path = "/home/admin/.config/nvim/lua-language-server"
local capabilities = vim.lsp.protocol.make_client_capabilities()
local lsp_installer = require "nvim-lsp-installer"

local  function on_attach(client, bufnr)
    -- Set up buffer-local keymaps (vim.api.nvim_buf_set_keymap()), etc.
end

capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp
                                                          .with(vim.lsp.diagnostic.on_publish_diagnostics, {virtual_text = false, underline = false})

lsp_installer.on_server_ready(function(server)
  -- Specify the default options which we'll use to setup all servers
  local default_opts = {
    on_attach = on_attach,
    capabilities = capabilities,
  }

  -- Now we'll create a server_opts table where we'll specify our custom LSP server configuration
  local server_opts = {
    -- Provide settings that should only apply to the "eslintls" server
    ['sumneko_lua'] = function()
        default_opts.cmd = {sumneko_binary, "-E", sumneko_root_path .. '/main.lua'}
      default_opts.settings = {
        Lua = {
            runtime = {version = 'LuaJIT', path = vim.split(package.path, ';')},
            diagnostics = {globals = {'vim'}},
            workspace = {library = {[vim.fn.expand('$VIMRUNTIME/lua')] = true, [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true}, maxPreload = 10000, preloadFileSize = 10000}
        }
      }
    end,
    ["efm"] = function()
        default_opts.init_options = {documentFormatting = true}
        default_opts.filetypes = {"lua"}
        default_opts.settings = {
            rootMarkers = {".git/"},
            languages = {lua = {{formatCommand = "lua-format -i --column-limit=150 --break-after-table-lb", formatStdin = true}}}
        }
    end,
  }

-- Use the server's custom settings, if they exist, otherwise default to the default options
  local server_options = server_opts[server.name] and server_opts[server.name]() or default_opts
  server:setup(server_options)
 end )





