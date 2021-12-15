

nnoremap <leader>tf :lua require('telescope.builtin').find_files({hidden = true})<cr>
nnoremap <leader>fd :lua telescope_find_dir({hidden = true, cwd = '~'})<CR>
nnoremap <leader>fb :lua require("telescope").extensions.file_browser.file_browser()<CR>
nnoremap <leader>tb :lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>th :lua require('telescope.builtin').help_tags()<CR>
nnoremap <leader>tc :lua require('telescope.builtin').find_files({prompt_title = "< Configs >", cwd = "/home/admin/dotfiles/", hidden = true})<CR>
nnoremap <leader>. :lua require('telescope.builtin').find_files({prompt_title = "< Configs >", cwd = "/home/admin/dotfiles/nvim", hidden = true})<CR>
 nnoremap <leader>gr :lua vim.lsp.buf.references()<CR>
 "require('telescope').extensions.lsp_handlers.references()<CR>
nnoremap <leader>gd :lua vim.lsp.buf.definition()<CR>
nnoremap <leader>re :lua vim.lsp.buf.rename()<CR>
nnoremap <leader>tds :lua vim.lsp.buf.document_symbol()<CR>
nnoremap <leader>ws :lua vim.lsp.buf.workspace_symbol()<CR>
nnoremap <leader>lg :lua require('telescope.builtin').live_grep()<CR>
nnoremap <leader>te :lua require('telescope.builtin').lsp_document_diagnostics()<CR>
nnoremap <leader>gs :lua require('telescope.builtin').git_status()<CR>
" nnoremap <leader>pw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
"

