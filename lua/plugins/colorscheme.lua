-----------------------------------------------------------
-- Activate
-----------------------------------------------------------

-- catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
vim.cmd("colorscheme catppuccin-macchiato")

-- dayfox, dawnfox, duskfox, terafox, nightfox
-- vim.cmd("colorscheme nightfox")


-- onedark, onelight, onedark_vivid, onedark_dark
-- vim.cmd("colorscheme onedark")

-----------------------------------------------------------
-- Setup
-----------------------------------------------------------

require("onedarkpro").setup({
  options = {
    transparency = true,
    terminal_colors = false
  }
})
