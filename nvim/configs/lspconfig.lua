local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local configs = require("lspconfig.configs")
local root_pattern = require("lspconfig.util").root_pattern

configs.kos_language_server = {
	default_config = {
		cmd = { "kls", "--stdio" },
		filetypes = { "kerboscript" },
		root_dir = root_pattern("ksconfig.json"),
		settings = {},
	},
}

-- if you just want default config for the servers then put them in a table
local servers = {
	"svelte",
	"html",
	"cssls",
	"clangd",
	"kos_language_server",
	"rust_analyzer",
	"marksman",
	"pylsp",
  "tsserver",
  "gopls",
  "astro"
}

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = on_attach,
		capabilities = capabilities,
	})
end
