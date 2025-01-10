return {
  "nvim-lualine/lualine.nvim",
  lazy = false,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      options = {
        --icons_enabled = false,
        --theme = 'solarized',
        --theme = 'catppuccin',
        --theme = 'tokyonight-day',
        disabled_filetypes = {
          'NvimTree',
        },
      },
      sections = {
        lualine_b = {},
        lualine_c = {
          {"filename", path = 1}
        },
        lualine_x = {"branch", "diff", "diagnostics"},
      },
    })
  end,
}
