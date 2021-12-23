require("remap_template_config")
vim.g.floaterm_autoclose = 1
vim.g.floaterm_keymap_new = '<leader>tn'
--[[ vim.g.floaterm_keymap_hide = '<leader>th'
vim.g.floaterm_keymap_show = '<leader>ts' ]]
vim.g.floaterm_keymap_next = "<leader>tf"
-- vim.g.floaterm_keymap_prev = "<leader>tb"
vim.g.floaterm_keymap_toggle = "<leader>tt"
vim.g.floaterm_keymap_kill = "<leader>tk"
vim.g.floaterm_position = "right"
vim.g.floaterm_opener = "edit"
vim.g.floaterm_height = 0.75

nmap("<leader>ti", ":FloatermNew irb<CR>")
nmap("<leader>;", ":FloatermNew --wintype=popup --height=7<CR>")
nmap("<leader>tg", ":FloatermNew lazygit<CR>")
nmap("<leader>trs", ":FloatermNew --name=rails_server rails s<CR>")
nmap("<leader>tlr", ":FloatermNew --name=guard_lr bundle exec guard<CR>")
nmap("<leader>ts", ":Clap floaterm<CR>")
nmap("<leader>tr", ":FloatermNew ranger<CR>")
