local map = vim.api.nvim_set_keymap


require("telescope").setup()

map("n", "<Leader>ff", [[ :Telescope find_files<CR> ]], {})
map("n", "<Leader>fb", [[ :Telescope buffers<CR> ]], {})
