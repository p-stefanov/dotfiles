local mapkey = require("util.keymapper").mapkey

mapkey("<leader>w", "w", "n")  -- faster saving
vim.keymap.set("n", " ", "/")  -- search with spacebar
mapkey("<leader><CR>", "noh", "n")  -- hide highlighted search

-- Navigation
vim.keymap.set("n", "<S-h>", "gT", { silent = true, noremap = true })
vim.keymap.set("n", "<S-l>", "gt", { silent = true, noremap = true })
mapkey("<leader>nn", "NERDTreeToggle", "n")
mapkey("<leader>nf", "NERDTreeFind", "n")

-- Telescope fuzzy file finder
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Telescope find_files" })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "Telescope live_grep" })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "Telescope help_tags" })

-- Pane and Window Navigation
mapkey("<C-h>", "<C-w>h", "n") -- Navigate Left
mapkey("<C-j>", "<C-w>j", "n") -- Navigate Down
mapkey("<C-k>", "<C-w>k", "n") -- Navigate Up
mapkey("<C-l>", "<C-w>l", "n") -- Navigate Right
mapkey("<C-h>", "wincmd h", "t") -- Navigate Left
mapkey("<C-j>", "wincmd j", "t") -- Navigate Down
mapkey("<C-k>", "wincmd k", "t") -- Navigate Up
mapkey("<C-l>", "wincmd l", "t") -- Navigate Right
mapkey("<C-h>", "TmuxNavigateLeft", "n") -- Navigate Left
mapkey("<C-j>", "TmuxNavigateDown", "n") -- Navigate Down
mapkey("<C-k>", "TmuxNavigateUp", "n") -- Navigate Up
mapkey("<C-l>", "TmuxNavigateRight", "n") -- Navigate Right

-- from https://github.com/NvChad/NvChad/blob/v2.5/lua/nvchad/mappings.lua#L24
vim.keymap.set("n", "<leader>fm", function()
  require("conform").format({ lsp_fallback = true })
end, { desc = "Format buffer" })

vim.keymap.set('v', '<leader>y', require('osc52').copy_visual, { desc = "Yank with osc52" })
