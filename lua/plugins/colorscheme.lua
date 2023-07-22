-----------------------------------------------------------
-- Activate
-----------------------------------------------------------

-- catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
-- dayfox, dawnfox, duskfox, terafox, nightfox
-- onedark, onelight, onedark_vivid, onedark_dark
vim.cmd("colorscheme catppuccin-macchiato")

-----------------------------------------------------------
-- Setup
-----------------------------------------------------------

require("onedarkpro").setup({
  options = {
    transparency = true,
    terminal_colors = false
  }
})
