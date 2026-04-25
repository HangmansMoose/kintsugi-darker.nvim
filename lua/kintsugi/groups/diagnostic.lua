-- Diagnostic colors (errors/warnings/info/hints).

local M = {}

function M.get(p)
  return {
    DiagnosticError               = { fg = p.red },
    DiagnosticWarn                = { fg = p.yellow },
    DiagnosticInfo                = { fg = p.blue_bright },
    DiagnosticHint                = { fg = p.green },
    DiagnosticOk                  = { fg = p.green },

    DiagnosticSignError           = { fg = p.red, bg = p.bg },
    DiagnosticSignWarn            = { fg = p.yellow, bg = p.bg },
    DiagnosticSignInfo            = { fg = p.blue_bright, bg = p.bg },
    DiagnosticSignHint            = { fg = p.green, bg = p.bg },
    DiagnosticSignOk              = { fg = p.green, bg = p.bg },

    DiagnosticVirtualTextError    = { fg = p.red, bg = "NONE", italic = true },
    DiagnosticVirtualTextWarn     = { fg = p.yellow, bg = "NONE", italic = true },
    DiagnosticVirtualTextInfo     = { fg = p.blue_bright, bg = "NONE", italic = true },
    DiagnosticVirtualTextHint     = { fg = p.green, bg = "NONE", italic = true },
    DiagnosticVirtualTextOk       = { fg = p.green, bg = "NONE", italic = true },

    DiagnosticUnderlineError      = { sp = p.red, undercurl = true },
    DiagnosticUnderlineWarn       = { sp = p.yellow, undercurl = true },
    DiagnosticUnderlineInfo       = { sp = p.blue_bright, undercurl = true },
    DiagnosticUnderlineHint       = { sp = p.green, undercurl = true },
    DiagnosticUnderlineOk         = { sp = p.green, undercurl = true },

    DiagnosticFloatingError       = { fg = p.red, bg = p.bg_float },
    DiagnosticFloatingWarn        = { fg = p.yellow, bg = p.bg_float },
    DiagnosticFloatingInfo        = { fg = p.blue_bright, bg = p.bg_float },
    DiagnosticFloatingHint        = { fg = p.green, bg = p.bg_float },
    DiagnosticFloatingOk          = { fg = p.green, bg = p.bg_float },

    DiagnosticDeprecated          = { fg = p.fg_mute, strikethrough = true },
    DiagnosticUnnecessary         = { fg = p.fg_mute, italic = true },

    -- Legacy (pre-0.6) aliases
    LspDiagnosticsDefaultError    = { fg = p.red },
    LspDiagnosticsDefaultWarning  = { fg = p.yellow },
    LspDiagnosticsDefaultInfo     = { fg = p.blue_bright },
    LspDiagnosticsDefaultHint     = { fg = p.green },
  }
end

return M
