vim.cmd('nnoremap <leader>zn :ZettelNew<space>')
vim.cmd('nnoremap <leader>zs :ZettelSearch<CR>')

return {
  {
    "michal-h21/vim-zettel",
    dependencies = {
      "junegunn/fzf",
      "junegunn/fzf.vim",
    },
  },
}
