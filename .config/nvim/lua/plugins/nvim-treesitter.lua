return {
  "nvim-treesitter/nvim-treesitter",
  enabled = true,
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile", "BufWritePre", "VeryLazy" },
  lazy = vim.fn.argc(-1) == 0, -- load treesitter early when opening a file from the cmdline
  init = function(plugin)
    -- PERF: add nvim-treesitter queries to the rtp and it's custom query predicates early
    -- This is needed because a bunch of plugins no longer `require("nvim-treesitter")`, which
    -- no longer trigger the **nvim-treesitter** module to be loaded in time.
    -- Luckily, the only things that those plugins need are the custom queries, which we make available
    -- during startup.
    require("lazy.core.loader").add_to_rtp(plugin)
    require("nvim-treesitter.query_predicates")
  end,
  cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },
  --keys = {
  --  { "<c-space>", desc = "Increment Selection" },
  --  { "<bs>", desc = "Decrement Selection", mode = "x" },
  --},
  --opts_extend = { "ensure_installed" },
  ---@type TSConfig
  ---@diagnostic disable-next-line: missing-fields
  opts = {
    highlight = {
      enable = true,
      disable = function(lang, buf) -- disable slow treesitter highlight for large files
          local max_filesize = 100 * 1024 -- 100 KB
          local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
          if ok and stats and stats.size > max_filesize then
              return true
          end
      end,
    },
    indent = { enable = true },
    sync_install = false,
    ensure_installed = {
      "bash",
      "c",
      "comment",
      "diff",
      "json",
      "lua",
      "markdown",
      "python",
      "html",
      "javascript",
      "typescript",
      "tsx",
      "vim",
      "vimdoc",
      "toml",
      "xml",
      "yaml",
    },
    --incremental_selection = {
    --  enable = true,
    --  keymaps = {
    --    init_selection = "<C-space>",
    --    node_incremental = "<C-space>",
    --    scope_incremental = false,
    --    node_decremental = "<bs>",
    --  },
    --},
    --textobjects = {
    --  move = {
    --    enable = true,
    --    goto_next_start = { ["]f"] = "@function.outer", ["]c"] = "@class.outer", ["]a"] = "@parameter.inner" },
    --    goto_next_end = { ["]F"] = "@function.outer", ["]C"] = "@class.outer", ["]A"] = "@parameter.inner" },
    --    goto_previous_start = { ["[f"] = "@function.outer", ["[c"] = "@class.outer", ["[a"] = "@parameter.inner" },
    --    goto_previous_end = { ["[F"] = "@function.outer", ["[C"] = "@class.outer", ["[A"] = "@parameter.inner" },
    --  },
    --},
  },
  ---@param opts TSConfig
  config = function(_, opts)
    --if type(opts.ensure_installed) == "table" then
    --  opts.ensure_installed = LazyVim.dedup(opts.ensure_installed)
    --end
    require("nvim-treesitter.configs").setup(opts)
  end,
}
