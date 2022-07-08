local map = vim.api.nvim_set_keymap


require("nvim-tree").setup()

map("n", "<Leader>n", [[ :NvimTreeToggle<CR> ]], {})

