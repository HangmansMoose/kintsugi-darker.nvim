-- Assembles highlight groups and applies them to Neovim.

local palette_mod = require("kintsugi.palette")
local editor      = require("kintsugi.groups.editor")
local syntax      = require("kintsugi.groups.syntax")
local treesitter  = require("kintsugi.groups.treesitter")
local lsp         = require("kintsugi.groups.lsp")
local diagnostic  = require("kintsugi.groups.diagnostic")
local markup      = require("kintsugi.groups.markup")
local terminal    = require("kintsugi.groups.terminal")
local plugins     = require("kintsugi.groups.plugins")

local M = {}

local function merge(dst, src)
  for k, v in pairs(src) do dst[k] = v end
end

--- Build the complete highlight table for a given variant/options.
function M.build(variant, opts)
  opts = opts or {}
  local p = palette_mod.get(variant)

  local hi = {}
  merge(hi, editor.get(p, opts))
  merge(hi, syntax.get(p))
  merge(hi, treesitter.get(p))
  merge(hi, lsp.get(p))
  merge(hi, diagnostic.get(p))
  merge(hi, markup.get(p))
  merge(hi, plugins.get(p, opts))

  -- Honor config toggles
  if opts.bold_keywords == false then
    for _, name in ipairs({
      "Keyword", "Statement", "Conditional", "Repeat", "Label", "Exception",
      "PreProc", "Include", "Define", "PreCondit", "StorageClass", "Tag",
      "@keyword", "@keyword.function", "@keyword.import", "@keyword.type",
      "@keyword.modifier", "@keyword.repeat", "@keyword.return",
      "@keyword.exception", "@keyword.conditional", "@keyword.directive",
      "@keyword.directive.define", "@keyword.storage", "@keyword.coroutine",
      "@keyword.debug", "@constant.macro", "@type.qualifier",
      "@variable.builtin", "@tag", "@tag.builtin", "@tag.tsx", "@tag.jsx",
      "@lsp.type.keyword", "@lsp.type.modifier",
      "@lsp.typemod.keyword.controlFlow", "@lsp.typemod.keyword.documentation",
      "@markup.heading.1", "@markup.heading.2", "@markup.heading.3",
      "@markup.heading.4",
    }) do
      if hi[name] then hi[name].bold = false end
    end
  end

  if opts.italic_comments then
    local comment_groups = {
      "Comment", "@comment", "@comment.documentation",
    }
    for _, name in ipairs(comment_groups) do
      if hi[name] then hi[name].italic = true end
    end
  end

  return hi, p
end

--- Load a variant into the current Neovim session.
function M.load(variant, opts)
  opts = opts or {}

  if vim.g.colors_name then vim.cmd("hi clear") end
  if vim.fn.exists("syntax_on") == 1 then vim.cmd("syntax reset") end

  vim.o.termguicolors = true
  vim.g.colors_name = (variant == "flared") and "kintsugi-flared" or "kintsugi-dark"

  local hi, p = M.build(variant, opts)

  for group, spec in pairs(hi) do
    local ok, err = pcall(vim.api.nvim_set_hl, 0, group, spec)
    if not ok then
      vim.notify(
        ("kintsugi: failed to set highlight %s: %s"):format(group, err),
        vim.log.levels.WARN
      )
    end
  end

  if opts.terminal_colors ~= false then
    terminal.apply(p)
  end
end

return M
