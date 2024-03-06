return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  config = function()
    require'nvim-treesitter.configs'.setup {
      ensure_installed = {
        "lua",
        "python",
        "javascript",
        "bash",
        "fish",
        "gitcommit"
      },
      sync_isntall = true,
    }
  end
}
