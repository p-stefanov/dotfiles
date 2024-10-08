-- https://github.com/stevearc/conform.nvim/blob/master/doc/recipes.md#lazy-loading-with-lazynvim
return {
  "stevearc/conform.nvim",
  enabled = true,
  event = { "BufReadPre", "BufNewFile" },
  cmd = { "ConformInfo" },
  --keys = {
  --  {
  --    -- Customize or remove this keymap to your liking
  --    "<leader>fm",
  --    function()
  --      require("conform").format({ async = true, lsp_fallback = true })
  --    end,
  --    mode = "",
  --    desc = "Format buffer",
  --  },
  --},
  -- Everything in opts will be passed to setup()
  opts = {
    -- Define your formatters
    formatters_by_ft = {
      --lua = { "stylua" },
      --python = { "isort", "black" },
      python = { "black" },
      --javascript = { { "prettierd", "prettier" } },
    },
    -- Set up format-on-save
    format_on_save = { timeout_ms = 500, lsp_fallback = true },
    ---- Customize formatters
    --formatters = {
    --  shfmt = {
    --    prepend_args = { "-i", "2" },
    --  },
    --},
  },
  --init = function()
  --  -- If you want the formatexpr, here is the place to set it
  --  vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
  --end,
}
