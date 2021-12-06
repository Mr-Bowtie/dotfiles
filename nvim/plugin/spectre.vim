nnoremap <leader>S :lua require('spectre').open()<CR>

"search current word
nnoremap <leader>sw :lua require('spectre').open_visual({select_word=true})<CR>
