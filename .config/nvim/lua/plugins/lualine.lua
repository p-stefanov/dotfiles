return {
  "nvim-lualine/lualine.nvim",
  lazy = false,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      --options = {
      --  icons_enabled = false
      --},
      sections = {
        --lualine_b = {},
        lualine_c = {
          {"filename", path = 1}
        },
        lualine_x = {
          "encoding",
          {"fileformat", icons_enabled = false},
          --"filetype"
        },
      },
    })
  end,
}
