return {
  "ThePrimeagen/harpoon",
  keys = {

    { "<leader>hf", ":lua require('harpoon.mark').add_file() <CR>", desc = "Add file" },
    { "<leader>hm", ":lua require('harpoon.ui').toggle_quick_menu() <CR>", desc = "Toggle menu" },
    { "<leader>hi", ":lua require('harpoon.ui').nav_file(1) <CR>", desc = "Go to file 1" },
    { "<leader>hu", ":lua require('harpoon.ui').nav_file(2) <CR>", desc = "Go to file 2" },
    { "<leader>he", ":lua require('harpoon.ui').nav_file(3) <CR>", desc = "Go to file 3" },
    { "<leader>ho", ":lua require('harpoon.ui').nav_file(4) <CR>", desc = "Go to file 4" },
    { "<leader>ha", ":lua require('harpoon.ui').nav_file(5) <CR>", desc = "Go to file 5" },
    { "<leader>hx", ":lua require('harpoon.ui').nav_file(6) <CR>", desc = "Go to file 6" },
    { "<leader>hk", ":lua require('harpoon.ui').nav_file(7) <CR>", desc = "Go to file 7" },
    { "<leader>hj", ":lua require('harpoon.ui').nav_file(8) <CR>", desc = "Go to file 8" },
  },
}
