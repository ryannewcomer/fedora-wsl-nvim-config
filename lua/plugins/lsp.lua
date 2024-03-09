return {
  'neovim/nvim-lspconfig',
  lazy = false,
  config = function()
    local lsp = require'lspconfig'
    local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
    -- setup lua ls
    lsp.lua_ls.setup{}

    --setup tailwindcss
    lsp.tailwindcss.setup{}
    --setup html
    lsp.html.setup{
      capabilities = capabilities,
    }

    --setup python
    lsp.pylsp.setup{}

  end
}
