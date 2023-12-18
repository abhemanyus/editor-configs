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
    "go",
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
	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "gnn", -- set to `false` to disable one of the mappings
			node_incremental = "grn",
			scope_incremental = "grc",
			node_decremental = "grm",
		},
	},
	textobjects = {
		enable = true,
	},
	highlight = {
		enable = true,
		use_languagetree = true,
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
		"shellcheck",
		"marksman",
		"eslint-lsp",
	},
}

return M
