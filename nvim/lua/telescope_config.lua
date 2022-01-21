 require('telescope').setup {
    defaults = {
        layout_config = {
            horizontal = { 
                height = 0.9 ,
                width = 0.7, 
                preview_width = 0.4,
            }
        }
    },
    extentions = { 
        file_browser = {},
        projects = {},
        fzf = {
            fuzzy = true, 
            override_genereic_sorter = true, 
            override_file_sorter = true, 
            case_mode = "smart_case",
        },
        lsp_handlers = {
            disable = {},
			location = {
				telescope = {},
				no_results_message = 'No references found',
			},
			symbol = {
				telescope = {},
				no_results_message = 'No symbols found',
			},
			call_hierarchy = {
				telescope = {},
				no_results_message = 'No calls found',
			},
			code_action = {
				telescope = {},
				no_results_message = 'No code actions available',
				prefix = ''},
    }, 
},
}

require("telescope").load_extension "file_browser"
require("telescope").load_extension "lsp_handlers"
require("telescope").load_extension "projects"
require('telescope').load_extension "fzf"
