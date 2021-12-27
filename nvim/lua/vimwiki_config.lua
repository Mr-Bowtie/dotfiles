require('remap_template_config')

-- nmap("", "<Plug>VimwikiVSplitLink<CR>")
vim.api.nvim_set_keymap('n', 'vs', '<Plug>VimwikiVSplitLink', {} )
vim.g.vimwiki_autowriteall = 1
-- vim.vimwiki_list = ( {'path' = '~/vimwiki/', 'auto_tags' = 1} )
vim.cmd("let g:vimwiki_list = [{'path': '~/vimwiki/','path_html': '~/vimwiki/vimwiki_html/', 'auto_tags': 1, 'auto_generate_tags': 1, 'auto_generate_links': 1, 'auto_export': 1}, {'path': '~/vimwiki/zk_brain/', 'path_html': '~/vimwiki/vimwiki_html/', 'auto_generate_links': 1, 'auto_export': 1}]")
vim.cmd('autocmd! BufEnter *.wiki silent ZettelBackLinks')
vim.cmd('autocmd! BufLeave *.wiki silent w')
