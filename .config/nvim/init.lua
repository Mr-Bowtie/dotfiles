-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.cmd("highlight Comment guifg=#fa59b2")
vim.cmd("highlight VimwikiBold guifg=#E0B66B gui=bold")
vim.cmd("highlight VimwikiCode guifg=#E06B6B")
vim.cmd("highlight VimwikiHeader1 guifg=#6BA5E0")
vim.cmd("highlight VimwikiHeader2 guifg=#9d7cd8")
vim.cmd("highlight VimwikiH1Folding guifg=#5CBF74")

vim.api.nvim_set_hl(0, "@comment", { link = "Comment" })

