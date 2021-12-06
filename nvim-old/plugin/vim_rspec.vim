let g:rspec_command = "vsplit | terminal rspec {spec}"

nnoremap <leader>rc :call RunCurrentSpecFile()<CR>
nnoremap <leader>rn :call RunNearestSpec()<CR>
nnoremap <leader>rl :call RunLastSpec()<CR>
nnoremap <leader>ra :call RunAllSpecs()<CR>

