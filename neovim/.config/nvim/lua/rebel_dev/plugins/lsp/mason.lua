return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		mason.setup({
			ui = {
				icons = {
					package_installed = "",
					package_pending = "",
					package_uninstalled = "",
				},
			},
		})

		mason_lspconfig.setup({
			ensure_installed = {
				"bashls",
				"clangd",
				"cmake",
				"cssls",
				"dockerls",
				"html",
				"jdtls",
				"jsonls",
				"markdown_oxide",
				"pylsp",
				"rust_analyzer",
				"sqlls",
				"taplo",
				"hydra_lsp",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"ast-grep",
				"black",
				"cpplint",
				"checkstyle",
				"clang-format",
				"dcm",
				"isort",
				"prettier",
				"pylint",
				"rustfmt",
				"stylua",
				"trivy",
			},
		})
	end,
}
