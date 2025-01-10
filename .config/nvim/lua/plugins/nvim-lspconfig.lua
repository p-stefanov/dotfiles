return {
  "neovim/nvim-lspconfig",
  enabled = true,
  event = { "BufReadPost", "BufWritePost", "BufNewFile" },
  config = function()
    vim.diagnostic.config({
      float = {
        border = "rounded",
      },
    })
    --vim.lsp.set_log_level('debug')
    require("lspconfig").pyright.setup({})
  end,
}
