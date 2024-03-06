return {
  'neovim/nvim-lspconfig',
  lazy = false,
  config = function()
    local lsp = require'lspconfig'
    -- setup lua ls
    lsp.lua_ls.setup{}

    --setup tailwindcss
    lsp.tailwindcss.setup{}

    --setup html
    lsp.html.setup{}

  end
}
