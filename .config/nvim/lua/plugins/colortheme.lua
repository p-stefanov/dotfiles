--return {
--  'maxmx03/solarized.nvim',
--  lazy = false,
--  priority = 1000,
--  config = function()
--    require('solarized').setup({
--      --theme = 'neo',
--      --palette = 'selenized',
--      styles = {
--        comments = { italic = false },
--      },
--      --highlights = function (colors, colorhelper)
--      --  local darken = colorhelper.darken
--      --  local lighten = colorhelper.lighten
--      --  local blend = colorhelper.blend
--
--      --  return {
--      --    LineNr = { fg = colors.base1, bg = colors.base02 },
--      --    CursorLineNr = { bg = colors.base02 },
--      --    CursorLine = { bg = colors.base02 },
--      --    Function = { italic = false },
--      --    Visual = { bg = colors.cyan },
--      --  }
--      --end,
--    })
--    vim.o.background = 'dark' -- or 'light'
--    vim.cmd.colorscheme 'solarized'
--  end,
--}
return {
  "catppuccin/nvim",
  lazy = false,
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      no_italic = true
    })
    --vim.cmd.colorscheme 'catppuccin-macchiato'
    --vim.cmd.colorscheme 'catppuccin-mocha'
    vim.cmd.colorscheme 'catppuccin'
  end,
}
