local wk = require("which-key")
wk.setup {
    wk.register({
        t = {
            name = 'telescope',
            c = "Open configs",
            b = "Buffers",
            e = "Errors",
            f = "Find files",
            g = "Live grep",
            h = "Help tags",
            r = "Find references (under cursor)",
            d = "Find Definition (under cursor)",
            s = "Git status",
            ws = "List Workplace symbols"
        }
    }, {prefix = "<leader>"}),

    wk.register({
        g = {
            name = 'git', 
            s = "status",
            c = "commit",
        }}, {prefix = '<leader>'}),

    wk.register({
        r = {
            name = 'rspec', 
            a = 'run all specs', 
            c = 'run current spec file', 
            n = 'run spec nearest cursor', 
            l = 'run last failing spec'
        }}, {prefix = '<leader>'}), 

    wk.register({
        x = {":!xdg-open %<CR><CR>", 'open file in default app'},
        h = 'focus vim window left',
        l = 'focus vim window right',
        j = 'focus vim window down',
        k = 'focus vim window up',
        S = 'Open search and replace (Spectre)',
    }, {prefix = "<leader>"}), 

    wk.register({["<leader>."] = "Find nvim files"}), 

    wk.register({
        h = {
            name = "Harpoon",
            f = {":lua require('harpoon.mark').add_file() <CR>", 'Add file'},
            m = {":lua require('harpoon.ui').toggle_quick_menu() <CR>", 'Toggle menu'},
            i = {":lua require('harpoon.ui').nav_file(1) <CR>", 'Go to file 1'},
            u = {":lua require('harpoon.ui').nav_file(2) <CR>", 'Go to file 2'},
            e = {":lua require('harpoon.ui').nav_file(3) <CR>", 'Go to file 3'},
            o = {":lua require('harpoon.ui').nav_file(4) <CR>", 'Go to file 4'},
            a = {":lua require('harpoon.ui').nav_file(5) <CR>", 'Go to file 5'},
            x = {":lua require('harpoon.ui').nav_file(6) <CR>", 'Go to file 6'},
            k = {":lua require('harpoon.ui').nav_file(7) <CR>", 'Go to file 7'},
            j = {":lua require('harpoon.ui').nav_file(8) <CR>", 'Go to file 8'},
        }
    }, {prefix = '<leader>'}), -- navigation, window commands
    wk.register({
        ["<C-s>"] = {":w<CR>", "Write current file"},
        ["<C-C>"] = {":cd %:p:h<CR>", "Change CWD to current file's parent"},
        ["<M-j>"] = {":resize -2<CR>", "Resize left"},
        ["<M-k>"] = {":resize +2<CR>", "Resize right"},
        ["<M-h>"] = {":vertical resize -2<CR>", "Resize up"},
        ["<M-l>"] = {":vertical resize +2<CR>", "Resize down"},
        ["<TAB>"] = {":bnext<CR>", "Next buffer"},
        ["<S-TAB>"] = {":bprevious<CR>", "Last buffer"},
        ["<C-H>"] = {"<C-W><C-H>", "Move split left"},
        ["<C-L>"] = {"<C-W><C-L>", "Move split right"},
        ["<C-J>"] = {":m .+1<CR>", "Move line down one" },
        ["<C-K>"] = {":m .-2<CR>", "Move line up one"}
    }),

    wk.register({
        c = {
            name = 'Close', 
            b = {':bp | bd! #<CR>', 'Buffer (without losing split)'}, 
            w = {'ZZ', 'Window'}
        }
    }), 

    wk.register({
        ["jk"] = {"<ESC>", 'Exit insert mode'},
        ["<C-J>"] = {"<esc>:m .+1<CR>==A", "Move current line down one"},
        ["<C-K>"] = {"<esc>:m .-2<CR>==A", "Move current line up one"},
        ["<C-E>"] = {"<CR>end<ESC><S-O>", "Insert 'end' on new line, create new line above and place cursor"}
    }, {mode = 'i'}),  

    wk.register({["help"] = {"vert help", 'Open help in a vertical window'}}, {mode = 'c'}),

    -- wk.register({["<leader>\\"] = {"<C-\\><C-N>", "Enter normal mode from terminal"}}, {mode = 't'}),
    wk.register({
        ["<"] = {"<gv", "Keep selection highlighted, indent left"},
        [">"] = {">gv", "Keep selection highlighted, indent right"},
        ["J"] = {":m '>+1<CR>gv=gv", "Move current selection down one"},
        ["K"] = {":m '<-2<CR>gv=gv", "Move current selection up one"}
    }, {mode = 'v'}), 

    wk.register({['<C-N>'] = {":NERDTree.IsOpen() ? ':NERDTreeClose<CR>' : @% == '' ? ':NERDTree<CR>' : ':NERDTreeFind<CR>'"}}),
    
    wk.register({
        f = {
            name = "Floaterm",
            n = "New",
            h = "Hide",
            s = 'Show',
            f = 'Next terminal (Forward)',
            b = "Previous terminal (back)",
            t = 'Toggle',
            k = 'Kill'
        }
    }, {prefix = '<leader>'}),

}
    
