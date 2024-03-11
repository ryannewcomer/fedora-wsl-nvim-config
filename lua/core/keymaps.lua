local keymap = vim.keymap
local opts = { noremap = true, silent = true }
local builtin = require("telescope.builtin")

-- Increment/decrement
keymap.set("n", "<C-+>", "<C-a>")
keymap.set("n", "<C-->", "<C-x>")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- tab movement
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)

-- plugin

-- Telescope
keymap.set("n", "<leader>tf", builtin.find_files({}))
keymap.set("n", "<leader>tl", builtin.live_grep({}))
