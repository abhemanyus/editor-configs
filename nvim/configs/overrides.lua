local M = {}

M.treesitter = {
	ensure_installed = {
		"lua",
		"html",
		"css",
		"javascript",
		"typescript",
		"tsx",
		"c",
		"markdown",
		"markdown_inline",

		-- custom stuff
		"rust",
		"svelte",
		"python",
		"mermaid",
	},
	git = {
		enable = true,
	},

	renderer = {
		highlight_git = true,
		icons = {
			show = {
				git = true,
			},
		},
	},
	indent = {
		enable = true,
		-- disable = {
		--   "python"
		-- },
	},
}

M.mason = {
	ensure_installed = {
		-- lua stuff
		"lua-language-server",
		"stylua",

		-- web dev stuff
		"css-lsp",
		"html-lsp",
		"typescript-language-server",
		"prettier",

		-- c/cpp stuff
		"clangd",
		"clang-format",

		-- custom stuff
		"rust-analyzer",
		"shellcheck",
		"marksman",
		"eslint-lsp",
	},
}

return M
