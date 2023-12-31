local ok, ayu = pcall(require, "ayu")
if (not ok) then return end

local cmd = vim.cmd
local opt = vim.opt

opt.termguicolors = true      -- enable 24-bit RGB colors

ayu.setup({
    mirage = true,
    overrides = {
        tkLink = {fg = "#39BAE6"},
        tkBrackets = {fg = "#FF8F40"},
        tkHighLight = {fg = "#ABB0B6"},
        tkTagSep = {fg = "#399E66"},
        tkTag = {fg = "#F27083"},

    },
})
ayu.colorscheme()
