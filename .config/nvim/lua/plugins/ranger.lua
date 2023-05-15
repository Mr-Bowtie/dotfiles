vim.g.ranger_map_keys = 0
vim.g.ranger_command_override = 'ranger --cmd "set show_hidden=true"'

return {
  'francoiscabrol/ranger.vim',
  dependencies = {
    'rbgrouleff/bclose.vim'
  },
  keys = {
    {"<leader>fe", ":Ranger<CR>" ,desc = "Open Ranger File Explorer" }
  }
}
