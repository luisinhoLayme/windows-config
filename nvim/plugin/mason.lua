local ok, mason = pcall(require, "mason")
if not ok then return end

local ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not ok then return end

local ok, mason_null_ls = pcall(require, "mason-null-ls")
if not ok then return end

mason.setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

mason_lspconfig.setup({
  ensure_installed = {
		-- "tsserver",
		-- "html",
		-- "cssls",
		-- "tailwindcss",
		-- "lua_ls",
		-- "emmet_ls",
		-- "astro",
		-- "prismals",
		-- "clangd",
		-- "pyright",
  },
	automatic_installation = false,
})

mason_null_ls.setup({
	ensure_installed = {
		-- "prettier",
		-- "stylua",
		-- "eslint_d",
		-- "autopep8",
	},
})
