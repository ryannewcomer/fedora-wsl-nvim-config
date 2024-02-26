return {
  'nvim-telescope/telescope.nvim', tag = '0.1.5',
  dependencies = { 'nvim-lua/plenary.nvim', 'nvim-tree/nvim-web-devicons'},
  lazy = false,
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    require('telescope').setup{
     defaults = {
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next, -- move to next result
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
            }
          }
        },

}
end
}
