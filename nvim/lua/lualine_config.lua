require('lualine').setup {
    options = {
        theme = 'horizon'
    }, 
    extensions = {'fugitive'},
    sections = {
        lualine_b = {
            'branch',
            'diff',
        -- {   'diagnostics', sources = {'nvim_diagnostic'}}
    }, 
        lualine_c = {"%F%m"}
    }
}
