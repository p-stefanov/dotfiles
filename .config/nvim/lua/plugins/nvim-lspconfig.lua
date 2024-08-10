return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPost", "BufWritePost", "BufNewFile" },
  config = function()
    require("lspconfig").pyright.setup({})
  end,
}
