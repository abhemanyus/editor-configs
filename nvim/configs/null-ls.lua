local null_ls = require("null-ls")

local b = null_ls.builtins

local sources = {
	-- webdev stuff
	b.formatting.prettier, -- so prettier works only on these filetypes

	-- Lua
	b.formatting.stylua,

	-- cpp
	b.formatting.clang_format,

	-- custom stuff
	b.diagnostics.shellcheck,
	b.diagnostics.eslint,
	b.code_actions.gitsigns,
	b.formatting.rustfmt,
  b.formatting.gofmt,
}

null_ls.setup({
	sources = sources,
	on_attach = require("lspconfig.configs").on_attach,
})
