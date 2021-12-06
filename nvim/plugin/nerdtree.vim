" nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <expr> <C-N> g:NERDTree.IsOpen() ? ':NERDTreeClose<CR>' : @% == '' ? ':NERDTree<CR>' : ':NERDTreeFind<CR>'
