return {
  "echasnovski/mini.completion",
  version = "*",
  event = 'VimEnter',
  config = function()
    require("mini.completion").setup()
  end,
}
