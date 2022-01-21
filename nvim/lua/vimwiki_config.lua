require('remap_template_config')
-- nmap("", "<Plug>VimwikiVSplitLink<CR>")
vim.api.nvim_set_keymap('n', 'vs', '<Plug>VimwikiVSplitLink', {} )
vim.g.vimwiki_autowriteall = 1
-- vim.vimwiki_list = ( {'path' = '~/vimwiki/', 'auto_tags' = 1} )
vim.cmd("let g:vimwiki_list = [{'path': '~/vimwiki/','path_html': '~/vimwiki/docs/', 'syntax': 'markdown', 'ext': '.md', 'auto_tags': 1, 'auto_generate_tags': 1, 'auto_generate_links': 0, 'auto_export': 0}]")
vim.cmd('autocmd! BufEnter */vimwiki/*.md silent :g/Backlinks/.+1,$d | ZettelBackLinks')
-- vim.cmd('autocmd! BufEnter */vimwiki/*.md silent ZettelBackLinks')
vim.cmd('autocmd! BufLeave  */vimwiki/*.md silent w | VimwikiRebuildTags')
-- vim.cmd("autocmd! BufEnter */vimwiki/** :set wrap linebreak")
-- vim.cmd("autocmd! BufEnter */vimwiki/** :set tw=80")
-- vim.cmd("autocmd! BufLeave */vimwiki/** :set nowrap")
-- vim.cmd("autocmd! BufLeave */vimwiki/** :set tw=0")

