 require('telescope').setup {
    defaults = {
        layout_config = {
            horizontal = { 
                height = 0.9 ,
                width = 0.8, 
                preview_width = 0.4,
            }
        }
    },
    extentions = { 
        file_browser = {}  
    } 
}

require("telescope").load_extension "file_browser"
