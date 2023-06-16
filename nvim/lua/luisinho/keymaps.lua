----------------------------------------------------------
-- Keymaps configuration file: keymaps of neovim
-- and plugins.
-----------------------------------------------------------

local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
local cmd = vim.cmd

-----------------------------------------------------------
-- Neovim shortcuts:
-----------------------------------------------------------

-- clear search highlighting
map('n', '<leader>c', ':nohl<CR>', default_opts)
-- reload configuracion
map('n', '<leader>r', ':source % <CR>', default_opts)

-- don't use arrow keys
map('', '<up>', '<nop>', {noremap = true})
map('', '<down>', '<nop>', {noremap = true})
map('', '<left>', '<nop>', {noremap = true})
map('', '<right>', '<nop>', {noremap = true})

map('i', '<C-h>', '<left>', default_opts)
map('i', '<C-j>', '<down>', default_opts)
map('i', '<C-k>', '<up>', default_opts)
map('i', '<C-l>', '<right>', default_opts)

-- move first and last
map('i', '<C-a>', '<C-o>^', default_opts)
map('i', '<C-e>', '<C-o>$', default_opts)

-- fast saving with <leader> and s
map('n', '<leader>w', ':w<CR>', default_opts)
map('i', 'ii', '<Esc><Esc>', default_opts)

-- if you haven't already set it
map('n', 'j', 'gj', default_opts)
map('n', 'k', 'gk', default_opts)

-- scroll mejorado
map('n', '<C-e>', '10<C-e>', default_opts)
map('n', '<C-y>', '10<C-y>', default_opts)

-- Mejor identacion
map('v', '<', '<gv', default_opts)
map('v', '>', '>gv', default_opts)


-- search result focus
map("n", "n", "nzzzv", { desc = "Goes to next result on the search and put the cursor in the middle of the screen" })
map("n", "N", "Nzzzv", { desc = "Goes to prev result on the search and put the cursor in the middle of the screen" })

-- move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h', default_opts)
map('n', '<C-j>', '<C-w>j', default_opts)
map('n', '<C-k>', '<C-w>k', default_opts)
map('n', '<C-l>', '<C-w>l', default_opts)


-- close all windows and exit from neovim
map('n', '<leader>q', ':q<CR>', default_opts)

-- punto y coma al final
map('n', '<leader>;', '$a;<Esc>', default_opts)

--move
map('x', 'K', ":move '<-2<CR>gv-gv", {noremap = true})
map('x', 'J', ":move '>+1<CR>gv-gv", {noremap = true})

-- right, left, up, down => resize

map('n', '<right>', ':vertical resize +2<CR>', {silent = true})
map('n', '<left>', ':vertical resize -2<CR>', {silent = true})
map('n', '<up>', ':resize +2<CR>', {silent = true})
map('n', '<down>', ':resize -2<CR>', {silent = true})

-----------------------------------------------------------
-- Applications & Plugins shortcuts:
-----------------------------------------------------------

-- shorcut emmet key
-- vim.g.user_emmet_leader_key=','

-- open terminal
map('n', '<C-t>', ':Term<CR>', {noremap = true})
map('t', '<Esc><Esc>', '<C-\\><C-n>', {noremap = true})


-- nvim-tree
map('n', '<leader>n', ':Neotree toggle<CR>', default_opts)       -- open/close
--map('n', '<leader>r', ':NvimTreeRefresh<CR>', default_opts)  -- refresh
--map('n', '<leadjr>n', ':NvimTreeFindFile<CR>', default_opts) -- search file

-- telescope emojis
map('n', '<leader>ts', ':Telescope symbols<CR>', default_opts)


-- Trouble

map("n", "<leader>ff", "<cmd>Trouble<cr>", {silent = true, noremap = true})
map("n", "<leader>fw", "<cmd>Trouble workspace_diagnostics<cr>", {silent = true, noremap = true})
-- map("n", "<leader>xd", "<cmd>Trouble document_diagnostics<cr>", {silent = true, noremap = true})

-- Prettier


-- cokeline
map("n", "<leader>l", "<Plug>(cokeline-focus-next)", { silent = true })
map("n", "<leader>j", "<Plug>(cokeline-focus-prev)", { silent = true })
map("n", "<leader>bp", "<Plug>(cokeline-switch-prev)", { silent = true })
map("n", "<leader>bn", "<Plug>(cokeline-switch-next)", { silent = true })
map("n", "<leader>bi", "<Plug>(cokeline-pick-focus)", { silent = true })

map("n", "<leader>to", ":bufdo bd<cr>", default_opts) --close all bufers

map('n', '<leader>x', ':bdelete<CR>', default_opts)


-- Rest
map("n", "<leader>rr", ":lua require('rest-nvim').run()<CR>", { noremap = true })

-- hop
-- place this in one of your configuration file(s)
map('n', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
map('n', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})
map('n', 't', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<cr>", {})
map('n', 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<cr>", {})
map('n', '<leader>hl', "<cmd>lua require'hop'.hint_lines_skip_whitespace()<cr>", {})
map('n', '<leader>hw', "<cmd>lua require'hop'.hint_words()<cr>", {})
map('n', '<leader>hc', "<cmd>lua require'hop'.hint_char1()<cr>", {})
