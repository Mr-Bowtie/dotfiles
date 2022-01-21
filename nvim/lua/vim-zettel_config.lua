require("remap_template_config")
vim.g.zettel_fzf_command = "rg --column --color=always --smart-case --line-number --regexp '^title: (.+)' --replace '$1'"
vim.g.zettel_fzf_options = ( '--with-nth=-1' )
vim.g.zettel_format = "%y%m%d-%title"

nmap("<leader>zs", ":ZettelSearch<CR>")
-- vim.cmd("let g:zettel_options = [{}, {'front_matter': [['tags', '']]}]")
