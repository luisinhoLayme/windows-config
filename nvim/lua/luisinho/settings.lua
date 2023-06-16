-----------------------------------------------------------
-- Neovim API aliases
-----------------------------------------------------------
--local map = vim.api.nvim_set_keymap -- set global keymap
local cmd = vim.cmd                   -- execute Vim commands
local exec = vim.api.nvim_exec        -- execute Vimscript
local fn = vim.fn                     -- call Vim functions
local g = vim.g                       -- global variables
local opt = vim.opt                   -- global/buffer/windows-scoped options

-----------------------------------------------------------
-- General
----------------------------------------------------------
g.mapleader = ' '             -- change leader to a space
opt.mouse = 'a'               -- enable mouse support
opt.clipboard = 'unnamedplus' -- copy/paste to system clipboard
opt.swapfile = false          -- don't use swapfile

-----------------------------------------------------------
-- Memory, CPU
-----------------------------------------------------------
opt.hidden = true         -- enable background buffers
opt.history = 100         -- remember n lines in history
opt.lazyredraw = true     -- faster scrolling
opt.synmaxcol = 1000      -- max column for syntax highlight

-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------
opt.expandtab = true      -- use spaces instead of tabs
opt.shiftwidth = 2        -- shift 4 spaces when tab
opt.tabstop = 2           -- 1 tab == 4 spaces
opt.smartindent = true    -- autoindent new lines
opt.softtabstop = 2

-----------------------------------------------------------
-- Neovim UI
-----------------------------------------------------------
opt.number = true             -- show line number
opt.relativenumber = true     -- show line number
opt.showmatch = true          -- highlight matching parenthesis
opt.foldmethod = 'marker'     -- enable folding (default 'foldmarker', 'marker')
opt.colorcolumn = '120'        -- line lenght marker at 80 columns
opt.splitright = true         -- vertical split to the right
opt.splitbelow = true         -- orizontal split to the bottom
opt.ignorecase = true         -- ignore case letters when search
opt.smartcase = true          -- ignore lowercase for the whole pattern
opt.linebreak = true          -- wrap on word boundary
opt.conceallevel = 0
opt.termguicolors = true
opt.signcolumn = "yes"
opt.pumblend = 25
opt.pumheight = 10 -- Maximum number of entries in a popup
opt.guifont = "Fisa Code"  -- Lexsa
--g.neovide_cursor_vfx_mode = "railgun"
opt.updatetime = 100
opt.breakindent = true
--opt.showbreak = '↪'
opt.backspace = { 'start', 'eol', 'indent' }
opt.signcolumn = "yes"

vim.scriptencoding = 'utf-8'
opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'

opt.list = true
opt.listchars = 'tab:▸ ,space:·,nbsp:␣,trail:•,precedes:«,extends:»' --·

--Syntax highlight astro "js/ts/tsx/jsx"
g.astro_typescript = 'enable'

-- Syntax highlight python: para respetar espaciados
g.python_recommended_style = 0
--cmd[[
--  filetype plugin indent on
--  syntax on
--]]

-- IndentLine
--g.indentLine_setColors = 0  -- set indentLine color
g.indentLine_char = '│'       --|┊▏ set indentLine character

-- disable IndentLine for markdown files (avoid concealing)
cmd [[autocmd FileType markdown let g:indentLine_enabled=0]]


-- set spell
exec ([[
augroup markdownSpell
  autocmd!
  autocmd FileType markdown setlocal spell spelllang=es
  autocmd BufRead,BufNewFile *.md setlocal spell spelllang=es
augroup END
]], false)

-- remember files
exec ([[
  augroup AutoSaveGroup
  autocmd!
  autocmd BufWinLeave,BufLeave,BufWritePost,BufHidden,QuitPre ?* nested silent! mkview!
  autocmd BufWinEnter ?* silent! loadview
augroup end
]], false)

-- remove whitespace on save
cmd [[au BufWritePre * :%s/\s\+$//e]]

-- highlight on yank
exec([[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
  augroup end
]], false)

-- don't auto commenting new lines
cmd [[au BufEnter * set fo-=c fo-=r fo-=o]]

-----------------------------------------------------------
-- Terminal
-----------------------------------------------------------
-- open a terminal pane on the right using :Term
cmd [[command Term :botright split term://POWERSHELL]]

-- Terminal visual tweaks
--- enter insert mode when switching to terminal
--- close terminal buffer on process exit
cmd [[
    autocmd TermOpen * setlocal listchars= nonumber norelativenumber nocursorline
    autocmd TermOpen * startinsert
    autocmd BufLeave term://* stopinsert
]]
