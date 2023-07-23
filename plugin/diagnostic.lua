-----------------------------------------------------------
-- Mappings
-----------------------------------------------------------

-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', "<Leader>e", vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', "<Leader>q", vim.diagnostic.setloclist)

-----------------------------------------------------------
-- Signs
-----------------------------------------------------------

local signs = { Error = "", Warn = "", Hint = "", Info = "" }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-----------------------------------------------------------
-- Config
-----------------------------------------------------------

vim.diagnostic.config({
  -- virtual_text = {
  --   source = "false",
  --   prefix = '●',
  -- },
  virtual_text = false,
  signs = true,
  underline = false,
  update_in_insert = false,
  float = {
    source = "always",
    border = "rounded"
  },
  severity_sort = true,
})

vim.cmd [[ autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, { focus=false }) ]]
