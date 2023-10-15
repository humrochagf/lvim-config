-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- ### VIM Configs ### --

-- Spelling
vim.opt.spelllang = { "en", "pt_br", "fr" }

-- Show special characters
vim.cmd [[
  set invlist
]]
vim.opt.listchars = "tab:|-,trail:.,extends:>,precedes:<"

-- ### LVIM Configs ### --

-- Theme selection
lvim.colorscheme = "catppuccin"
lvim.builtin.lualine.options.theme = "catppuccin"

-- Format on save
lvim.format_on_save.enabled = true

-- ### Mappings ### --

-- Quick insert to normal mode
lvim.keys.insert_mode["jj"] = "<C-c>"

-- Undo
lvim.keys.normal_mode["U"] = "<C-r>"

-- open terminal
lvim.builtin.terminal.open_mapping = "<C-t>"

-- Mapping groups
lvim.builtin.which_key.mappings[","] = {
  name = "Custom commands",
  s = { ":setlocal spell!<cr>", "Toggle spellcheck" },
  w = { ":setlocal wrap!<cr>", "Toggle word wrap" },
}

-- ### Language Configs ### --

-- Language servers
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "cpp",
  "go",
  "http",
  "javascript",
  "json",
  "lua",
  "python",
  "toml",
  "typescript",
  "css",
  "rust",
  "yaml",
}

-- ### Plugins ### ---

lvim.plugins = {
  "catppuccin/nvim",
}
