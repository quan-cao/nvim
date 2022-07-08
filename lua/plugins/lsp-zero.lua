local lsp = require("lsp-zero")
lsp.preset("recommended")
lsp.setup()

local cmp = require "cmp"
cmp.setup {
  mapping = cmp.mapping.preset.insert({
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
  })
}
