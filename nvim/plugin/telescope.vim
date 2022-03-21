

nnoremap <leader>lf :lua require('telescope.builtin').find_files({hidden = false})<cr>
nnoremap <leader>ld :lua telescope_find_dir({hidden = true, cwd = '~'})<CR>
nnoremap <leader>fb :lua require("telescope").extensions.file_browser.file_browser()<CR>
nnoremap <leader>lb :lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>lh :lua require('telescope.builtin').help_tags()<CR>
nnoremap <leader>. :lua require('telescope.builtin').find_files({prompt_title = "< Configs >", cwd = "/home/mr_bowtie/dotfiles/", hidden = true})<CR>
" nnoremap <leader>. :lua require('telescope.builtin').find_files({prompt_title = "< Configs >", cwd = "/home/admin/dotfiles/nvim", hidden = true})<CR>
 nnoremap gr :lua vim.lsp.buf.references()<CR>
 "require('telescope').extensions.lsp_handlers.references()<CR>
nnoremap gd :lua vim.lsp.buf.definition()<CR>
nnoremap re :lua vim.lsp.buf.rename()<CR>
nnoremap <leader>ds :lua vim.lsp.buf.document_symbol()<CR>
nnoremap <leader>ls :lua vim.lsp.buf.workspace_symbol()<CR>
nnoremap <leader>lg :lua require('telescope.builtin').live_grep()<CR>
nnoremap <leader>le :Telescope diagnostics bufnr=0
" nnoremap <leader>pw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
"
nnoremap <leader>lp :Telescope projects<CR>
nnoremap <leader>lo :Telescope oldfiles<CR>
nnoremap <leader>lt :Telescope tags<CR>
