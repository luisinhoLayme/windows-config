local ok, indent_blankline = pcall(require, "indent_blankline")
if (not ok) then return end
-----------------------------------------------------------
-- Indent line configuration file
-----------------------------------------------------------

-- require("indent_blankline").setup {
--   char = "┊", --┆
--   space_char_blankline = " ",
--   show_current_context = true,
--   show_current_context_start = true,
-- }


-- xfce-terminal
vim.opt.list = true
--vim.opt.listchars:append("space:⋅")
vim.opt.termguicolors = true

-- vim.cmd [[highlight IndentBlanklineIndent1 guifg=#606217 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent2 guifg=#8C4E1C gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent3 guifg=#80631E gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent4 guifg=#7C2920 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent5 guifg=#7A515C gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent6 guifg=#516948 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent7 guifg=#4C5F58 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent8 guifg=#877D67 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent10 guifg=#7c6f64 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#343339 gui=nocombine]]

indent_blankline.setup {
  char = "│", --│┆┊▏
  space_char_blankline = " ",
  --show_first_indent_level = false,
  show_current_context = true,
  show_current_context_start = true,
  filetype_exclude = {
    'help',
    'git',
    'markdown',
    'text',
    'terminal',
    'lspinfo',
    'packer'
  },
  buftype_exclude = {
    'terminal',
    'nofile'
  },
  char_highlight_list = {
        "IndentBlanklineIndent1",
        -- "IndentBlanklineIndent2",
        -- "IndentBlanklineIndent3",
        -- "IndentBlanklineIndent4",
        -- "IndentBlanklineIndent5",
        -- "IndentBlanklineIndent6",
        -- "IndentBlanklineIndent7",
        -- "IndentBlanklineIndent8",
        -- "IndentBlanklineIndent9",
        -- "IndentBlanklineIndent10",
    },
}
