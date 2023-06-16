local ok, nightfox = pcall(require, "nightfox")
if (not ok) then return end

-- Default options
nightfox.setup({
  options = {
    -- Compiled file's destination location
    compile_path = vim.fn.stdpath("cache") .. "/nightfox",
    compile_file_suffix = "_compiled", -- Compiled file suffix
    transparent = true,    -- Disable setting background
    terminal_colors = false, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
    dim_inactive = false,   -- Non focused panes set to alternative background
    module_default = true,  -- Default enable value for modules
    colorblind = {
      enable = false,        -- Enable colorblind support
      simulate_only = false, -- Only show simulated colorblind colors and not diff shifted
      severity = {
        protan = 0,          -- Severity [0,1] for protan (red)
        deutan = 0,          -- Severity [0,1] for deutan (green)
        tritan = 0,          -- Severity [0,1] for tritan (blue)
      },
    },
    styles = {              -- Style to be applied to different syntax groups
      comments = "italic",    -- Value is any valid attr-list value `:help attr-list`
      conditionals = "NONE",
      constants = "NONE",
      functions = "NONE",
      keywords = "italic",
      numbers = "NONE",
      operators = "NONE",
      strings = "NONE",
      types = "NONE",
      variables = "NONE",
    },
    inverse = {             -- Inverse highlight for different types
      match_paren = false,
      visual = true,
      search = true,
    },
    modules = {             -- List of various plugins and additional options
      -- ...
    },
  },
  palettes = {
    duskfox = {
      bg0 = "#181818",
      bg1 = "#181818",
      bg2 = "#202020",
      bg3 = "#202020",
      bg4 = "#282828",
      sel0 = "#30302C",
    },

    nightfox = {
      bg0 = "#181818",
      bg1 = "#181818",
      bg2 = "#202020",
      bg3 = "#202020",
      bg4 = "#282828",
      sel0 = "#30302C",
    }
  },
  specs = {},
  groups = {},
})

-- setup must be called before loading
vim.cmd("colorscheme nightfox") --nightfox, duskfox, nordfox, terafox, carbonfox
