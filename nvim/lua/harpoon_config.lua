-- map = require('remap_template').map

require("harpoon").setup({
    global_settings = {
        save_on_toggle = false,
        save_on_change = true, 
        enter_on_sendcmd = false,

    },
})

--[[ map('n', 'hm', ':lua require("harpoon.ui").toggle_quick_menu()')
map('n', 'hf', ':lua require("harpoon.ui").add_file()')
map('n', 'hu', ':lua require("harpoon.ui").nav_file(1)')
map('n', 'he', ':lua require("harpoon.ui").nav_file(2)')
map('n', 'ho', ':lua require("harpoon.ui").nav_file(3)')
map('n', 'ha', ':lua require("harpoon.ui").nav_file(4)') ]]
