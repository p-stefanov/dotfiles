vim.g.mapleader = ","
vim.g.maplocalleader = ","

vim.g.lexima_enable_endwise_rules = 0
vim.g.lexima_enable_newline_rules = 0

vim.g.slime_target = "tmux"
vim.g.slime_default_config = {socket_name = "default", target_pane = "1"}
vim.g.slime_dont_ask_default = 1

local opt = vim.opt

-- Tab / Indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.smartindent = true
opt.wrap = true

-- Search
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true

-- Appearance
opt.number = true
--opt.relativenumber = true
opt.termguicolors = true
--opt.colorcolumn = '120'
opt.signcolumn = "yes"
opt.cmdheight = 1
opt.scrolloff = 10
opt.completeopt = "menuone,noinsert,noselect"
opt.guicursor = "n-v-i-c:block-Cursor"
opt.listchars = {
    tab = "▸ ",
    eol = "¬",
    trail = "·",
    nbsp = "␣"
}

-- Behaviour
--opt.hidden = true
--opt.errorbells = false
opt.swapfile = false
opt.backup = false
--opt.undodir = vim.fn.expand("~/.nvim/undodir")
--opt.undofile = true
opt.backspace = "indent,eol,start"
opt.splitright = true
opt.splitbelow = true
opt.autochdir = false
--opt.iskeyword:append("-")
--opt.mouse:append('a')
opt.mouse = ""
-- Only set clipboard if not in ssh, to make sure the OSC 52 integration works automatically (requires Neovim >= 0.10.0):
opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus" -- Sync with system clipboard
--opt.modifiable = true
opt.encoding = "UTF-8"

vim.diagnostic.config({
  float = {
    border = "rounded",
  },
})
