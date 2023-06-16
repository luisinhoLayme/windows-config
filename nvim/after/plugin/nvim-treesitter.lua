local ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not ok then return end

-----------------------------------------------------------
-- Treesitter configuration file
-----------------------------------------------------------
require 'nvim-treesitter.install'.compilers = { "zig" }

treesitter.setup({
  ensure_installed = {
    -- "bash",
    "css",
    -- "go",
    -- "gomod",
    -- "html",
    "javascript",
    "json",
    "lua",
    "http",
    "tsx",
    -- "markdown",
    -- "markdown_inline",
    -- "nix",
    -- "org",
    -- "php",
    -- "phpdoc",
    -- "query",
    -- "rust",
    -- "sql",
    -- "svelte",
    "typescript",
    -- "vim",
    -- "yaml",
  },
  highlight = {
    enable = true,
    disable = {},
    additional_vim_regex_highlighting = { "org" },
  },
  rainbow = {
    enable = true,
    -- list of languages you want to disable the plugin for
    disable = { "jsx", "cpp" },
    -- Which query to use for finding delimiters
    query = {
      "rainbow-parens",
      -- tsx = "rainbow-tags",
    },
    -- Highlight the entire buffer all at once
    strategy = require("ts-rainbow").strategy.global,
    hlgroups = {
      -- "TSRainbowRed",
      "TSRainbowYellow",
      "TSRainbowBlue",
      "TSRainbowOrange",
      "TSRainbowGreen",
      "TSRainbowViolet",
      "TSRainbowCyan",
    },
  },
  indent = {
    enable = true,
  },
  context_commentstring = {
    enable = true,
  },
  autotag = {
    enable = true,
    -- filetypes = { "html" , "xml" },
  },
})
