-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.cmd("highlight Comment guifg=#fa59b2")
vim.api.nvim_set_hl(0, "@comment", { link = "Comment" })
