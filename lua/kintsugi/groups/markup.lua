-- Markdown, diff, help, and other markup-oriented filetypes.

local M = {}

function M.get(p)
  local s = p.syntax

  return {
    -- Diff (vim built-in)
    DiffAdd         = { bg = "#1e2a1e" },
    DiffChange      = { bg = "#2a2a1e" },
    DiffDelete      = { fg = p.red, bg = "#2a1e1e" },
    DiffText        = { fg = p.yellow, bg = "#3a3a20", bold = true },

    -- gitcommit / markup.* (unified diff)
    diffAdded       = { fg = p.green },
    diffRemoved     = { fg = p.red },
    diffChanged     = { fg = p.yellow },
    diffOldFile     = { fg = p.red },
    diffNewFile     = { fg = p.green },
    diffFile        = { fg = s.diff_header },
    diffLine        = { fg = p.blue },
    diffIndexLine   = { fg = s.diff_header },

    -- Markdown
    markdownH1              = { fg = s.storage, bold = true },
    markdownH2              = { fg = s.storage, bold = true },
    markdownH3              = { fg = s.keyword, bold = true },
    markdownH4              = { fg = s.keyword, bold = true },
    markdownH5              = { fg = s.type },
    markdownH6              = { fg = s.type },
    markdownHeadingDelimiter= { fg = s.type },
    markdownHeadingRule     = { fg = s.type },
    markdownCode            = { fg = s.markup_raw },
    markdownCodeBlock       = { fg = s.markup_raw },
    markdownCodeDelimiter   = { fg = p.fg_mute },
    markdownBold            = { fg = p.fg, bold = true },
    markdownItalic          = { italic = true },
    markdownBoldItalic      = { fg = p.fg, bold = true, italic = true },
    markdownBlockquote      = { fg = p.fg_mute, italic = true },
    markdownListMarker      = { fg = s.keyword },
    markdownOrderedListMarker = { fg = s.keyword },
    markdownRule            = { fg = p.border },
    markdownLinkText        = { fg = s.link, underline = true },
    markdownUrl             = { fg = s.link, underline = true },
    markdownLinkDelimiter   = { fg = p.fg_mute },
    markdownLinkTextDelimiter = { fg = p.fg_mute },

    -- Help
    helpHyperTextJump       = { fg = s.link, underline = true },
    helpHyperTextEntry      = { fg = s.keyword, bold = true },
    helpHeader              = { fg = s.storage, bold = true },
    helpSectionDelim        = { fg = s.type },
    helpNote                = { fg = p.bg, bg = p.blue_bright, bold = true },
    helpWarning             = { fg = p.bg, bg = p.yellow, bold = true },
    helpTodo                = { fg = p.bg, bg = p.accent, bold = true },

    -- gitcommit
    gitcommitSummary        = { fg = p.fg, bold = true },
    gitcommitOverflow       = { fg = p.red },
    gitcommitHeader         = { fg = s.keyword, bold = true },
    gitcommitBranch         = { fg = s.storage, bold = true },
    gitcommitSelectedFile   = { fg = p.green },
    gitcommitDiscardedFile  = { fg = p.red },
    gitcommitUnmergedFile   = { fg = p.red },
    gitcommitUntrackedFile  = { fg = p.green },
    gitcommitComment        = { fg = p.fg_mute },

    -- HTML / XML tags
    htmlTag                 = { fg = s.punctuation },
    htmlEndTag              = { fg = s.punctuation },
    htmlTagName             = { fg = s.storage, bold = true },
    htmlArg                 = { fg = s.type },
    htmlLink                = { fg = s.link, underline = true },
    htmlTitle               = { fg = s.storage, bold = true },
    htmlH1                  = { fg = s.storage, bold = true },
    htmlH2                  = { fg = s.storage, bold = true },

    -- CSS
    cssClassName            = { fg = s.support or s.type },
    cssClassNameDot         = { fg = s.punctuation },
    cssTagName              = { fg = s.storage, bold = true },
    cssProp                 = { fg = s.type },
    cssIdentifier           = { fg = s.type },
    cssPseudoClassId        = { fg = s.keyword, bold = true },
    cssAttrRegion           = { fg = s.string },
    cssStringQ              = { fg = s.string },
    cssUnitDecorators       = { fg = s.keyword },
    cssValueNumber          = { fg = s.number },
    cssColor                = { fg = s.number },
    cssImportant            = { fg = p.red, bold = true },

    -- JSON
    jsonKeyword             = { fg = s.type },
    jsonString              = { fg = s.string },
    jsonNumber              = { fg = s.number },
    jsonBoolean             = { fg = s.number },
    jsonNull                = { fg = s.number },
    jsonQuote               = { fg = s.punctuation },
    jsonBraces              = { fg = s.punctuation },
  }
end

return M
