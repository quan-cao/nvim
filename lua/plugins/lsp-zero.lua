local lsp = require("lsp-zero")
lsp.preset("recommended")
lsp.setup()

vim.opt.signcolumn = "yes" -- Reserve space for diagnostic icons

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  update_in_insert = false,
  underline = true,
  severity_sort = false,
  float = true,
})

local cmp = require "cmp"
cmp.setup {
  mapping = cmp.mapping.preset.insert({
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4)
  })
}

-- format on save
vim.cmd [[autocmd BufWritePre * lua require("vim.lsp.buf").format()]]

