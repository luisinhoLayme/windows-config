local ok, gruvbox = pcall(require, "gruvbox")
if (not ok) then return end

-- setup must be called before loading the colorscheme
-- Default options:
gruvbox.setup({
  undercurl = true,
  underline = true,
  bold = false,
  italic = true,
  strikethrough = false,
  invert_selection = true,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "hard", -- can be "hard", "soft" or empty string
  palette_overrides = {
    gright_green = "#000"
  },
  overrides = {
    SignColumn = { bg = "#1C1F20"}
  },
  dim_inactive = false,
  transparent_mode = true,
})

vim.cmd("colorscheme gruvbox")
