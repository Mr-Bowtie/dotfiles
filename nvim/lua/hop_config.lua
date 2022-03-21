require('hop').setup({
    keys = "pyfgcrlaoeuidhtnsqjkxbmwvz"
})
require('remap_template_config')

vmap('hw', "<cmd>HopWord<CR>")
vmap('hb', "<cmd>HopChar2<CR>")
vmap('hl', "<cmd>HopLine<CR>")
vmap('hp', "<cmd>HopPattern<CR>")
nmap('hw', ":HopWord<CR>")
nmap('hb', ":HopChar2<CR>")
nmap('hl', ":HopLine<CR>")
nmap('hp', ":HopPattern<CR>")
nmap('f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>" )
nmap('F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>" )
vmap('f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>" )
vmap('F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>" )

