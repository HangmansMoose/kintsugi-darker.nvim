-- Legacy Vim syntax groups (the `:help group-name` set).
-- These are still used by non-treesitter filetypes and as fallbacks.

local M = {}

function M.get(p)
  local s = p.syntax

  local groups = {
    Comment          = { fg = s.comment, italic = false },

    Constant         = { fg = s.constant },
    String           = { fg = s.string },
    Character        = { fg = s.string },
    Number           = { fg = s.number },
    Float            = { fg = s.number },
    Boolean          = { fg = s.number },

    Identifier       = { fg = s.default },
    Function         = { fg = s.func },

    Statement        = { fg = s.keyword, bold = true },
    Conditional      = { fg = s.keyword, bold = true },
    Repeat           = { fg = s.keyword, bold = true },
    Label            = { fg = s.keyword, bold = true },
    Operator         = { fg = s.operator },
    Keyword          = { fg = s.keyword, bold = true },
    Exception        = { fg = s.keyword, bold = true },

    PreProc          = { fg = s.keyword, bold = true },
    Include          = { fg = s.keyword, bold = true },
    Define           = { fg = s.keyword, bold = true },
    Macro            = { fg = s.default },
    PreCondit        = { fg = s.keyword, bold = true },

    Type             = { fg = s.type },
    StorageClass     = { fg = s.storage, bold = true },
    Structure        = { fg = s.type },
    Typedef          = { fg = s.type },

    Special          = { fg = s.type },
    SpecialChar      = { fg = s.annotation },
    Tag              = { fg = s.storage, bold = true },
    Delimiter        = { fg = s.punctuation },
    SpecialComment   = { fg = s.comment, bold = true },
    Debug            = { fg = p.yellow },

    Underlined       = { fg = s.link, underline = true },
    Ignore           = { fg = p.fg_mute },
    Error            = { fg = s.invalid, bold = true },
    Todo             = { fg = p.bg, bg = p.accent, bold = true },

    -- Common additions
    qfLineNr         = { fg = p.fg_mute },
    qfFileName       = { fg = p.accent },
    helpCommand      = { fg = s.keyword, bold = true },
    helpExample      = { fg = s.string },
  }

  return groups
end

return M
