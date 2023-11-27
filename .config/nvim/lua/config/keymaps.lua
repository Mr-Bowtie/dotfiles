-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map("i", "jk", "<ESC>")

-- hop.nvim keymaps
-- workaround to allow hop commands is visual mode
-- TODO: figure out how to make this work in the keys section of the default plugin config
map("n", "hw", ":HopWord<CR>")
map("n", "hl", ":HopLine<CR>")
map("n", "hb", ":HopChar2<CR>")
map("n", "hp", ":HopPattern<CR>")
map({ "n", "x" }, "f", function()
  require("hop").hint_char1({ direction = require("hop.hint").HintDirection.AFTER_CURSOR, current_line_only = true })
end)
map({ "n", "x" }, "F", function()
  require("hop").hint_char1({ direction = require("hop.hint").HintDirection.BEFORE_CURSOR, current_line_only = true })
end)
map({ "n", "x" }, "t", function()
  require("hop").hint_char1({ direction = require("hop.hint").HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
end)
map({ "n", "x" }, "T", function()
  require("hop").hint_char1({ direction = require("hop.hint").HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
end)
map({ "n", "x" }, "hw", "<cmd>HopWord<CR>")
map({ "n", "x" }, "hl", "<cmd>HopLine<CR>")
map({ "n", "x" }, "hb", "<cmd>HopChar2<CR>")
map({ "n", "x" }, "hp", "<cmd>HopPattern<CR>")

-- Codeium commands
map("i", "<C-c>", function()
  return vim.fn["codeium#Accept"]()
end, { expr = true })

-- LSP commands
local bufopts = { noremap = true, silent = true, buffer = bufnr }
map("n", "<leader>rf", function()
  vim.lsp.buf.format({ async = true })
end, bufopts)

map("v", "<leader>rf", function()
  vim.lsp.buf.format({ async = true })
end, bufopts)

-- add end to methods and enter insert mode between
map("i", "<C-e>", "<CR>end<ESC><S-O>")

-- change cwd to current files parent
map("n", "<C-c>", ":cd %:p:h<CR>")

map("n", "<leader>ef", "<cmd>!erb-format % --write<CR>")
