return {
  'windwp/nvim-ts-autotag',
  lazy = false,
  config = function()
    require('nvim-ts-autotag').setup({
      filetypes = {"html", "xml"}
    })
  end
}
