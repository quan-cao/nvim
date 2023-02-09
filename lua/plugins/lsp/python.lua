require"lspconfig".pylsp.setup{
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          maxLineLength = 120
        }
      }
    }
  }
}
