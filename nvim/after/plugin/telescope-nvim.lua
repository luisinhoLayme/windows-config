local ok, telescope = pcall(require, "telescope")
if not ok then return end
-- Using Lua functions
local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap
map("n", "<leader>fb", '<cmd>lua require("telescope.builtin").buffers()<cr>', opts)
map("n", "<leader>fc", '<cmd>lua require("telescope.builtin").commands()<cr>', opts)
map("n", "<leader>fd", '<cmd>lua require("telescope.builtin").diagnostics()<cr>', opts)
map("n", "<leader>fs", '<cmd>lua require("telescope.builtin").find_files()<cr>', opts)
map("n", "<leader>fg", '<cmd>lua require("telescope.builtin").live_grep()<cr>', opts)
map("n", "<leader>fgb", '<cmd>lua require("telescope.builtin").git_branches()<cr>', opts)
map("n", "<leader>fgc", '<cmd>lua require("telescope.builtin").git_commits()<cr>', opts)
map("n", "<leader>fgs", '<cmd>lua require("telescope.builtin").git_status()<cr>', opts)
map("n", "<leader>fh", '<cmd>lua require("telescope.builtin").help_tags()<cr>', opts)
map("n", "<leader>tt", '<cmd>lua require("material.functions").find_style()<cr>', opts)

vim.api.nvim_set_keymap("n", "<space>fb", ":Telescope file_browser<cr>", { noremap = true }) --material theme

-- ["c"] = fb_actions.create,
-- ["r"] = fb_actions.rename,
-- ["m"] = fb_actions.move,
-- ["y"] = fb_actions.copy,
-- ["d"] = fb_actions.remove,
-- ["o"] = fb_actions.open,
-- ["g"] = fb_actions.goto_parent_dir,
-- ["e"] = fb_actions.goto_home_dir,
-- ["w"] = fb_actions.goto_cwd,
-- ["t"] = fb_actions.change_cwd,
-- ["f"] = fb_actions.toggle_browser,
-- ["h"] = fb_actions.toggle_hidden,
-- ["s"] = fb_actions.toggle_all,

-- open file_browser with the path of the current buffer
-- vim.api.nvim_set_keymap(
--   "n",
--   "<space>fb",
--   ":Telescope file_browser path=%:p:h select_buffer=true",
--   { noremap = true }
-- )

local options = {
	defaults = {
		vimgrep_arguments = {
			"rg",
			"-L",
			"--color=never",
			"--no-heading",
			"--with-filename",
			"--line-number",
			"--column",
			"--smart-case",
		},
		prompt_prefix = "   ",
		selection_caret = "❯ ",
		entry_prefix = " ",
		initial_mode = "insert",
		selection_strategy = "reset",
		sorting_strategy = "ascending",
		layout_strategy = "horizontal",
		layout_config = {
			horizontal = {
				prompt_position = "top",
				preview_width = 0.55,
				results_width = 0.8,
			},
			vertical = {
				mirror = false,
			},
			width = 0.87,
			height = 0.80,
			preview_cutoff = 120,
		},
		file_sorter = require("telescope.sorters").get_fuzzy_file,
		file_ignore_patterns = { "node_modules" },
		generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
		path_display = { "truncate" }, -- absolute, truncate
		winblend = 0,
		border = {},
		-- borderchars = { "―", "￨", "―", "￨", "╭", "╮", "╯", "╰" },
		--·┊...─ ⚊ । | ⋮ ‥ 𝄀 ￨ ⼀ ⏤― ¦
		color_devicons = true,
		set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
		file_previewer = require("telescope.previewers").vim_buffer_cat.new,
		grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
		qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
		--
		buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
		mappings = {
			n = { ["q"] = require("telescope.actions").close },
		},
	},
	extensions = {
		media_files = {
			-- filetypes whitelist
			-- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
			filetypes = { "png", "webp", "jpg", "jpeg" },
			-- find command (defaults to `fd`)
			find_cmd = "rg",
		},
	},
}

telescope.setup(options)

-- require("telescope").load_extension("notify")
require("telescope").load_extension("file_browser")
-- require("telescope").load_extension("ui-select")
-- require("telescope").load_extension("media_files")

