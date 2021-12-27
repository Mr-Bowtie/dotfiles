function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

function nmap(shortcut, command)
    map("n", shortcut, command)
end
 
function imap(shortcut, command)
    map("i", shortcut, command)
end

function tmap(shortcut, command)
    map('t', shortcut, command)
end

function vmap(shortcut, command)
    map('v', shortcut, command)
end

-- example remap 
-- map('n', '<C-e>', ':e %', {silent = true})
-- map('n', '<leader>?', ':Cheatsheet')
