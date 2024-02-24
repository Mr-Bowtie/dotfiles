-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.transparent_enabled = true
vim.g.viewdir = "/home/mr_bowtie/.config/nvim/views"

vim.o.wrap = true
vim.o.linebreak = true
vim.o.rnu = false
-- set winhighlight=Normal:MyNormal,NormalNC:MyNormalNCnvim/lua/con
vim.api.nvim_set_hl(0, "Comment", { fg = "#75c2d1", bold = true })
-- vim.cmd("highlight Comment guifg=#75c2d1")
vim.g.vimwiki_list = {
  {
    path = '~/vimwiki/',
    syntax = 'markdown',
    ext = 'md'
  }
}
vim.g.foldlevel = 0
vim.g.vimwiki_folding = 'marker'
-- vim.g.foldmethod = "marker"
vim.g.zettel_fzf_command = "ag --smart-case -l"
vim.g.zettel_fzf_options = ( '--with-nth=-1' )
vim.g.zettel_format = "%y%m%d-%title"
