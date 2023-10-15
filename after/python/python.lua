local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { command = "ruff",  filetypes = { "python" } },
  { command = "black", filetypes = { "python" } },
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { command = "ruff",      filetypes = { "python" } },
  { command = "flake8",    filetypes = { "python" } },
  { command = "codespell", filetypes = { "python" } },
  { command = "mypy",      filetypes = { "python" } },
}
