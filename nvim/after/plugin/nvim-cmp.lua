local ok, cmp = pcall(require, "cmp")
if not ok then return end

local ok, lspkind = pcall(require, "lspkind")
if not ok then return end

local compare = require("cmp.config.compare")


cmp.setup({
	mapping = {
		["<C-d>"] = cmp.mapping.scroll_docs(-2),
		["<C-f>"] = cmp.mapping.scroll_docs(2),
		["<C-n>"] = cmp.mapping.select_next_item(),
		["<C-p>"] = cmp.mapping.select_prev_item(),

		["<CR>"] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Insert,
			select = true,
		}),
		["<c-space>"] = cmp.mapping.complete(),
	},
	sources = {
		{ name = "vsnip" },
		{ name = "nvim_lsp" },
		{ name = "nvim_lua" },
		{ name = "path" },
		-- { name = "luasnip" },
		-- { name = "nvim_lsp_signature_help" },
		{
			name = "buffer",
			keyword_length = 4,
			option = {
				get_bufnrs = function()
					local bufs = {}
					for _, win in ipairs(vim.api.nvim_list_wins()) do
						local bufnr = vim.api.nvim_win_get_buf(win)
						if vim.api.nvim_buf_get_option(bufnr, "buftype") ~= "terminal" then
							bufs[bufnr] = true
						end
					end
					return vim.tbl_keys(bufs)
				end,
			},
		},
	},

	snippet = {
		expand = function(args)
			-- require("luasnip").lsp_expand(args.body)
			vim.fn["vsnip#anonymous"](args.body)
		end,
	},

	completion = {
		completeopt = "menuone,noselect,noinsert",
	},

	formatting = {
		format = lspkind.cmp_format({
			with_text = true,
			menu = {
				vsnip = "[Snip]",
				nvim_lsp = "[LSP]",
				buffer = "[buf]",
				nvim_lua = "[api]",
				path = "[path]",
			},
		}),
	},

	sorting = {
		priority_weight = 2,
		comparators = {
			compare.offset,
			compare.exact,
			compare.score,
			compare.recently_used,
			compare.kind,
			compare.sort_text,
			compare.length,
			compare.order,
		},
	},

	experimental = {
		native_menu = false,

		ghost_text = false,
	},
})

-- Set configuration for specific filetype.
cmp.setup.filetype("gitcommit", {
	sources = cmp.config.sources({
		{ name = "cmp_git" }, -- You can specify the `cmp_git` source if you were installed it.
	}, {
		{ name = "buffer" },
	}),
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline("/", {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = "buffer" },
	},
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(":", {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{ name = "path" },
	}, {
		{ name = "cmdline" },
	}),
})

-- vim.cmd("highlight Pmenu guibg=NONE")

