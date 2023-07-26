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
	"terraformls",
	"html",
	"cssls",
	"clangd",
	"kos_language_server",
	"rust_analyzer",
	"marksman",
	"pylsp",
}

lspconfig.denols.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	root_dir = root_pattern("deno.json", "deno.jsonc"),
})

lspconfig.tsserver.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	root_dir = root_pattern("package.json", "tsconfig.json", "jsconfig.json"),
})

lspconfig.java_language_server.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	filetypes = { "java" },
	root_dir = root_pattern(".git"),
	cmd = { "/home/sanndy/.local/share/nvim/mason/packages/java-language-server/dist/lang_server_linux.sh" },
})

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = on_attach,
		capabilities = capabilities,
	})
end

--
-- lspconfig.pyright.setup { blabla}
