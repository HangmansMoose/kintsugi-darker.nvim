-- Tree-sitter captures (`:help treesitter-highlight-groups`).
-- Mapping follows the VSCode Kintsugi token scope → nvim @capture.

local M = {}

function M.get(p)
  local s = p.syntax

  return {
    -- Comments
    ["@comment"]                    = { fg = s.comment },
    ["@comment.documentation"]      = { fg = s.comment, italic = true },
    ["@comment.error"]              = { fg = p.red },
    ["@comment.warning"]            = { fg = p.yellow },
    ["@comment.todo"]               = { fg = p.bg, bg = p.accent, bold = true },
    ["@comment.note"]               = { fg = p.bg, bg = p.blue_bright, bold = true },

    -- Punctuation
    ["@punctuation"]                = { fg = s.punctuation },
    ["@punctuation.delimiter"]      = { fg = s.punctuation },
    ["@punctuation.bracket"]        = { fg = s.punctuation },
    ["@punctuation.special"]        = { fg = s.punctuation },

    -- Constants
    ["@constant"]                   = { fg = s.constant },
    ["@constant.builtin"]           = { fg = s.constant },
    ["@constant.macro"]             = { fg = s.keyword, bold = true },

    ["@string"]                     = { fg = s.string },
    ["@string.documentation"]       = { fg = s.string, italic = true },
    ["@string.regexp"]              = { fg = s.annotation },
    ["@string.escape"]              = { fg = s.annotation },
    ["@string.special"]             = { fg = s.annotation },
    ["@string.special.path"]        = { fg = s.link, underline = true },
    ["@string.special.symbol"]      = { fg = s.constant },
    ["@string.special.url"]         = { fg = s.link, underline = true },

    ["@character"]                  = { fg = s.string },
    ["@character.special"]          = { fg = s.annotation },

    ["@number"]                     = { fg = s.number },
    ["@number.float"]               = { fg = s.number },
    ["@boolean"]                    = { fg = s.number },

    -- Identifiers
    ["@variable"]                   = { fg = s.default },
    ["@variable.builtin"]           = { fg = s.self, bold = true },
    ["@variable.parameter"]         = { fg = s.default },
    ["@variable.member"]            = { fg = s.default },

    ["@property"]                   = { fg = s.default },
    ["@field"]                      = { fg = s.default },

    -- Functions
    ["@function"]                   = { fg = s.func },
    ["@function.builtin"]           = { fg = s.func },
    ["@function.call"]              = { fg = s.func },
    ["@function.macro"]             = { fg = s.default },
    ["@function.method"]            = { fg = s.func },
    ["@function.method.call"]       = { fg = s.func },

    ["@constructor"]                = { fg = s.type },
    ["@parameter"]                  = { fg = s.default },

    -- Keywords / storage / operator
    ["@keyword"]                    = { fg = s.keyword, bold = true },
    ["@keyword.function"]           = { fg = s.keyword, bold = true },
    ["@keyword.operator"]           = { fg = s.operator },
    ["@keyword.import"]             = { fg = s.keyword, bold = true },
    ["@keyword.type"]               = { fg = s.storage, bold = true },
    ["@keyword.modifier"]           = { fg = s.storage, bold = true },
    ["@keyword.repeat"]             = { fg = s.keyword, bold = true },
    ["@keyword.return"]             = { fg = s.keyword, bold = true },
    ["@keyword.debug"]              = { fg = s.keyword, bold = true },
    ["@keyword.exception"]          = { fg = s.keyword, bold = true },
    ["@keyword.conditional"]        = { fg = s.keyword, bold = true },
    ["@keyword.conditional.ternary"] = { fg = s.operator },
    ["@keyword.directive"]          = { fg = s.keyword, bold = true },
    ["@keyword.directive.define"]   = { fg = s.keyword, bold = true },
    ["@keyword.storage"]            = { fg = s.storage, bold = true },
    ["@keyword.coroutine"]          = { fg = s.keyword, bold = true },

    ["@operator"]                   = { fg = s.operator },

    -- Types
    ["@type"]                       = { fg = s.type },
    ["@type.builtin"]               = { fg = s.type },
    ["@type.definition"]            = { fg = s.type },
    ["@type.qualifier"]             = { fg = s.storage, bold = true },

    ["@attribute"]                  = { fg = s.annotation },
    ["@attribute.builtin"]          = { fg = s.annotation },

    -- Tags (HTML, JSX, XML)
    ["@tag"]                        = { fg = s.storage, bold = true },
    ["@tag.builtin"]                = { fg = s.storage, bold = true },
    ["@tag.attribute"]              = { fg = s.type },
    ["@tag.delimiter"]              = { fg = s.punctuation },

    -- Labels
    ["@label"]                      = { fg = s.keyword, bold = true },

    -- Modules / namespaces
    ["@module"]                     = { fg = s.type },
    ["@module.builtin"]             = { fg = s.type },
    ["@namespace"]                  = { fg = s.type },

    -- Diff
    ["@diff.plus"]                  = { fg = p.green },
    ["@diff.minus"]                 = { fg = p.red },
    ["@diff.delta"]                 = { fg = p.yellow },

    -- Markup
    ["@markup"]                     = { fg = s.default },
    ["@markup.strong"]              = { fg = p.fg, bold = true },
    ["@markup.emphasis"]            = { fg = p.fg, italic = true },
    ["@markup.italic"]              = { italic = true },
    ["@markup.strikethrough"]       = { strikethrough = true },
    ["@markup.underline"]           = { underline = true },

    ["@markup.heading"]             = { fg = s.storage, bold = true },
    ["@markup.heading.1"]           = { fg = s.storage, bold = true },
    ["@markup.heading.2"]           = { fg = s.storage, bold = true },
    ["@markup.heading.3"]           = { fg = s.keyword, bold = true },
    ["@markup.heading.4"]           = { fg = s.keyword, bold = true },
    ["@markup.heading.5"]           = { fg = s.type },
    ["@markup.heading.6"]           = { fg = s.type },

    ["@markup.quote"]               = { fg = p.fg_mute, italic = true },
    ["@markup.math"]                = { fg = s.number },
    ["@markup.environment"]         = { fg = s.keyword, bold = true },
    ["@markup.environment.name"]    = { fg = s.type },

    ["@markup.link"]                = { fg = s.link, underline = true },
    ["@markup.link.label"]          = { fg = s.link },
    ["@markup.link.url"]            = { fg = s.link, underline = true },

    ["@markup.raw"]                 = { fg = s.markup_raw },
    ["@markup.raw.block"]           = { fg = s.markup_raw },
    ["@markup.raw.markdown_inline"] = { fg = s.markup_raw },

    ["@markup.list"]                = { fg = s.keyword },
    ["@markup.list.checked"]        = { fg = p.green },
    ["@markup.list.unchecked"]      = { fg = p.fg_mute },

    -- Misc
    ["@none"]                       = { fg = s.default },
    ["@text.literal"]               = { fg = s.markup_raw },
    ["@text.reference"]             = { fg = s.link },
    ["@text.title"]                 = { fg = s.storage, bold = true },
    ["@text.uri"]                   = { fg = s.link, underline = true },
    ["@text.emphasis"]              = { italic = true },
    ["@text.strong"]                = { bold = true },
    ["@text.diff.add"]              = { fg = p.green },
    ["@text.diff.delete"]           = { fg = p.red },

    -- Language specifics --------------------------------------------------

    -- Lua
    ["@constructor.lua"]            = { fg = s.punctuation },

    -- TSX / JSX
    ["@tag.tsx"]                    = { fg = s.storage, bold = true },
    ["@tag.jsx"]                    = { fg = s.storage, bold = true },

    -- Rust lifetimes / attributes
    ["@attribute.rust"]             = { fg = s.annotation },
    ["@lsp.type.lifetime.rust"]     = { fg = s.annotation },

    -- Python decorators
    ["@function.decorator"]         = { fg = s.annotation },
    ["@attribute.python"]           = { fg = s.annotation },
  }
end

return M
