-- Kintsugi Neovim port of the VSCode theme by @ahatem.
-- https://github.com/ahatem/vscode-kintsugi

local config = require("kintsugi.config")
local theme  = require("kintsugi.theme")

local M = {}

--- Optional setup. Stores user options so `:colorscheme kintsugi-dark`
--- / `kintsugi-flared` picks them up later.
function M.setup(opts)
  config.setup(opts)
end

--- Explicitly load a variant. Useful if you want to switch at runtime:
---     require("kintsugi").load("flared")
function M.load(variant, opts)
  variant = variant or config.options.variant
  local merged = vim.tbl_deep_extend("force", config.options, opts or {})
  theme.load(variant, merged)
end

--- Return the raw palette for external integrations (e.g. lualine theme).
function M.palette(variant)
  return require("kintsugi.palette").get(variant or config.options.variant)
end

return M
