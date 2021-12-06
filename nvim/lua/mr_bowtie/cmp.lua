local cmp = require'cmp'

cmp.setup({
    snippet = {
        expand = function(args)
            vim.fn["UltiSnips#Anon"](args.body)
        end
    },
    mapping = {
      ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
      ['<C-y>'] = cmp.config.disable, -- If you want to remove the default `<C-y>` mapping, You can specify `cmp.config.disable` value.
      ['<C-e>'] = cmp.mapping({
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
      }),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = cmp.config.sources({
        { name = 'nvim_lsp'},
        { name = 'git'},
        { name = 'path'},
        { name = 'buffer'},
        { name = 'nvim_lua'},
        { name = 'spell'},
        { name = 'treesitter'},
        { name = 'calc'},
        { name = 'nvim_lsp_document_symbols'},
        { name = 'ultisnips'},
        { name = 'tags'}
    }),
    formatting = {
        format = function(entry, vim_item)
            vim_item.abbr = string.sub(vim_item.abbr, 1, 30)
            return vim_item
        end
    }
})
