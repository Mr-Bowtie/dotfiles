vim.g.floaterm_autoclose = 0
vim.g.floaterm_keymap_new = "<leader>tn"
vim.g.floaterm_keymap_next = "<leader>tf"
vim.g.floaterm_keymap_toggle = "<leader>tt"
vim.g.floaterm_keymap_kill = "<leader>tk"
vim.g.floaterm_position = "right"
vim.g.floaterm_opener = "edit"
vim.g.floaterm_height = 0.85
vim.g.floaterm_width = 0.75
vim.g.floaterm_shell = "fish"

return {
  "voldikss/vim-floaterm",
  keys = {
    { "<leader>ti", ":FloatermNew irb<CR>", desc = "Open IRB" },
    { "<leader>tn", ":FloatermNew<CR>", desc = "Open new floaterm" },
    -- {"<leader>trs", ":FloatermNew --name=rails_server rails s<CR>", desc = 'Start local rails server'}
    -- {"<leader>tlr", ":FloatermNew --name=guard_lr bundle exec guard<CR>", desc = "Start guard live-reloader"}
  },
}
