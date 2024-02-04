-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
-- vim.cmd("autocmd BufWritePre lua vim.lsp.buf.format()")
-- vim.api.nvim_create_autocmd({ "BufWritePre" }, {
--   callback = function()
--     vim.lsp.buf.format()
--   end,
-- })

-- vim.api.nvim_create_augroup("remember_folds", {clear = true})
-- vim.api.nvim_create_autocmd({"BufWinLeave"}, {
--   group = "remember_folds",
--   pattern = {"*.md"},
--   callback = function()
--     vim.cmd("mkview 1")
--   end,
-- })
-- vim.api.nvim_create_autocmd({"BufWinEnter"}, {
--   group = "remember_folds",
--   pattern = {"*.md"},
--   callback = function()
--     vim.cmd("silent! loadview 1")
--   end,
-- })

vim.cmd("autocmd BufWinLeave *.md mkview")
-- vim.cmd("autocmd BufReadPost *.md loadview")
