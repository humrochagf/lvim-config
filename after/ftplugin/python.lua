local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { command = "ruff",  filetypes = { "python" } },
  { command = "black", filetypes = { "python" } },
}
