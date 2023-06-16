local g = vim.g
local cmd = vim.cmd                   -- execute Vim commands
local opt = vim.opt

opt.termguicolors = true      -- enable 24-bit RGB colors

cmd [[
 let g:everforest_colors_override = {'bg0': ['#202020', '234'], 'bg2': ['#3F3C3C', '235']}
]]

-- let g:everforest_colors_override = {'bg0': ['#202020', '234'], 'bg2': ['#282828', '235']}
 g.everforest_background = 'hard' -- " Available values: 'hard', 'medium'(default), 'soft'
 g.everforest_better_performance = 1 ----`0`, `1`
 g.everforest_enable_italic = 0  --`0`, `1`
 g.everforest_disable_italic_comment = 1 -- `0`, `1`
 g.everforest_transparent_background = 0 --`0`, `1`, `2`
 g.everforest_diagnostic_text_highlight = 1 -- `0`, `1`
 g.everforest_current_word = 'grey background' --" `'grey background'`, `'bold'`, `'underline'`, `'italic'
g.everforest_dim_inactive_windows = 1 -- `0`, `1`
g.everforest_sign_column_background = 'grey' --`'none'`, `'grey'`
g.everforest_ui_contrast = 'low' -- `'low'`, `'high'`
g.everforest_diagnostic_virtual_text = 'colored' --'grey'`, `'colored'`, `'highlighted'`

vim.cmd("colorscheme everforest")
