local null_ls = require "null-ls"

local b = null_ls.builtins

local sources = {
  b.formatting.codespell,
  b.diagnostics.codespell,

  -- webdev stuff
  b.formatting.deno_fmt, -- chosen deno for ts/js files cuz its very fast!
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } }, -- so prettier works only on these filetypes

  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,

  -- custom stuff
  b.diagnostics.shellcheck,
  b.code_actions.eslint_d,
  b.diagnostics.eslint_d,
  b.code_actions.gitsigns,
  b.formatting.rustfmt,
  b.diagnostics.deno_lint,
}

null_ls.setup {
  debug = true,
  sources = sources,
  on_attach = require("lspconfig.configs").on_attach,
}
