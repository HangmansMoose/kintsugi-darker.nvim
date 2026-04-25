-- LSP references, inlay hints, semantic tokens.

local M = {}

function M.get(p)
  local s = p.syntax

  return {
    -- References (editor.wordHighlight* in VSCode)
    LspReferenceText                    = { bg = p.bg_menu_inact },
    LspReferenceRead                    = { bg = p.bg_menu_inact },
    LspReferenceWrite                   = { bg = p.bg_menu_sel, underline = true },
    LspReferenceTarget                  = { bg = p.bg_menu_inact },

    -- Signatures
    LspSignatureActiveParameter         = { fg = p.accent, bold = true },

    -- Inlay hints (editorInlayHint.*)
    LspInlayHint                        = { fg = p.accent_hint, bg = p.border, italic = true },
    InlayHint                           = { fg = p.accent_hint, bg = p.border, italic = true },

    -- Code lens
    LspCodeLens                         = { fg = p.fg_mute, italic = true },
    LspCodeLensSeparator                = { fg = p.fg_mute },

    -- Info / hover
    LspInfoBorder                       = { fg = p.border, bg = p.bg_float },

    -- Semantic tokens (Neovim 0.9+) — mirror the treesitter mapping.
    ["@lsp.type.class"]                 = { fg = s.type },
    ["@lsp.type.comment"]               = {},
    ["@lsp.type.decorator"]             = { fg = s.annotation },
    ["@lsp.type.enum"]                  = { fg = s.type },
    ["@lsp.type.enumMember"]            = { fg = s.constant },
    ["@lsp.type.event"]                 = { fg = s.type },
    ["@lsp.type.function"]              = { fg = s.func },
    ["@lsp.type.interface"]             = { fg = s.type },
    ["@lsp.type.keyword"]               = { fg = s.keyword, bold = true },
    ["@lsp.type.macro"]                 = { fg = s.default },
    ["@lsp.type.method"]                = { fg = s.func },
    ["@lsp.type.modifier"]              = { fg = s.storage, bold = true },
    ["@lsp.type.namespace"]             = { fg = s.type },
    ["@lsp.type.number"]                = { fg = s.number },
    ["@lsp.type.operator"]              = { fg = s.operator },
    ["@lsp.type.parameter"]             = { fg = s.default },
    ["@lsp.type.property"]              = { fg = s.default },
    ["@lsp.type.regexp"]                = { fg = s.annotation },
    ["@lsp.type.string"]                = { fg = s.string },
    ["@lsp.type.struct"]                = { fg = s.type },
    ["@lsp.type.type"]                  = { fg = s.type },
    ["@lsp.type.typeParameter"]         = { fg = s.type },
    ["@lsp.type.variable"]              = { fg = s.default },

    ["@lsp.typemod.function.defaultLibrary"]  = { fg = s.func },
    ["@lsp.typemod.method.defaultLibrary"]    = { fg = s.func },
    ["@lsp.typemod.variable.defaultLibrary"]  = { fg = s.self, bold = true },
    ["@lsp.typemod.type.defaultLibrary"]      = { fg = s.type },
    ["@lsp.typemod.class.defaultLibrary"]     = { fg = s.type },
    ["@lsp.typemod.keyword.controlFlow"]      = { fg = s.keyword, bold = true },
    ["@lsp.typemod.keyword.documentation"]    = { fg = s.keyword, bold = true },
    ["@lsp.typemod.parameter.declaration"]    = { fg = s.default },
    ["@lsp.typemod.variable.readonly"]        = { fg = s.constant },
    ["@lsp.typemod.variable.readonly.defaultLibrary" ] = { fg = s.constant },
  }
end

return M
