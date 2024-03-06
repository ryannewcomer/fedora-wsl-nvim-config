return {
    'nvim-tree/nvim-tree.lua',
    dependencies = 'nvim-tree/nvim-web-devicons',
      keys = {
      { "<leader>e", "<cmd>NvimTreeFocus<cr>", desc = "NvimTree" },
      { "<C-n>", "<cmd>NvimTreeToggle<cr>", desc = "close NvimTree" }
    },
    config = function()
      require('nvim-tree').setup()
    end
}
