
local g = vim.g
local cmd = vim.cmd                   -- execute Vim commands
local opt = vim.opt

opt.termguicolors = true      -- enable 24-bit RGB colors

cmd [[
 let g:edge_colors_override = {'bg0': ['#202020', '234'], 'bg2': ['#444141', '235']}
]]
-- g.edge_colors_override = {'bg0': ['#2A2A2A', '234'], 'bg2': ['#2A2A2A', '235']}
g.edge_style = 'aura' --" aura, neon, default
g.edge_better_performance = 1 --`0`, `1`
g.edge_transparent_background = 0 --"default `0` `1`bg `2`bg & status
g.edge_enable_italic = 0 --"default `0`
g.edge_disable_italic_comment = 1 --"default `0` 
g.edge_dim_foreground = 0 --"default `0` use 1 for darkgrey
g.edge_diagnostic_text_highlight = 1 --"default `0` use 1
g.edge_current_word = 'grey background' --" `grey background`, `underline` `italic` `bold`
g.edge_diagnostic_virtual_text = 'colored' -- 'grey'`, `'colored'`, `'highlighted'`
g.edge_diagnostic_line_highlight = 1 -- default 0
g.edge_diagnostic_text_highlight = 0 -- default 1
g.edge_spell_foreground = 'colored' --`'none'`, `'colored'`
g.edge_menu_selection_background = 'green' --`'blue'`, `'green'`, `'purple'`
g.edge_dim_inactive_windows = 0 -- default 0

cmd("colorscheme edge")
