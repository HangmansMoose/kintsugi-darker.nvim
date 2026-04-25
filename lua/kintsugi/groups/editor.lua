-- Core Neovim UI highlights (non-syntax).

local M = {}

function M.get(p, opts)
  local bg = opts.transparent and p.none or p.bg
  local bg_dark = opts.transparent and p.none or p.bg_dark
  local bg_float = opts.transparent and p.none or p.bg_float

  return {
    -- Base
    Normal              = { fg = p.fg, bg = bg },
    NormalNC            = { fg = p.fg, bg = bg },
    NormalFloat         = { fg = p.fg_dim, bg = bg_float },
    FloatBorder         = { fg = p.border, bg = bg_float },
    FloatTitle          = { fg = p.accent, bg = bg_float, bold = true },
    FloatFooter         = { fg = p.fg_mute, bg = bg_float },
    NormalSB            = { fg = p.fg, bg = bg_dark },
    SignColumn          = { fg = p.fg_gutter, bg = bg },
    SignColumnSB        = { fg = p.fg_gutter, bg = bg_dark },
    EndOfBuffer         = { fg = bg, bg = bg },
    MsgArea             = { fg = p.fg, bg = bg },
    MsgSeparator        = { fg = p.border, bg = bg },
    ModeMsg             = { fg = p.fg, bold = true },
    MoreMsg             = { fg = p.accent },
    WarningMsg          = { fg = p.yellow },
    ErrorMsg            = { fg = p.red },
    Question            = { fg = p.accent },

    -- Cursor / line
    Cursor              = { fg = p.bg, bg = p.cursor },
    lCursor             = { fg = p.bg, bg = p.cursor },
    CursorIM            = { fg = p.bg, bg = p.cursor },
    TermCursor          = { fg = p.bg, bg = p.cursor },
    TermCursorNC        = { fg = p.bg, bg = p.fg_mute },
    CursorLine          = { bg = p.bg_line },
    CursorColumn        = { bg = p.bg_line },
    ColorColumn         = { bg = p.bg_line },
    LineNr              = { fg = p.fg_gutter, bg = bg },
    LineNrAbove         = { fg = p.fg_gutter, bg = bg },
    LineNrBelow         = { fg = p.fg_gutter, bg = bg },
    CursorLineNr        = { fg = p.fg_line_active, bg = p.bg_line, bold = true },
    CursorLineSign      = { bg = p.bg_line },
    CursorLineFold      = { bg = p.bg_line },

    -- Gutter / folds
    FoldColumn          = { fg = p.fg_gutter, bg = bg },
    Folded              = { fg = p.fg_dim, bg = p.bg_fold },
    VertSplit           = { fg = p.border, bg = bg },
    WinSeparator        = { fg = p.border, bg = bg, bold = true },
    WinBar              = { fg = p.fg_dim, bg = bg },
    WinBarNC            = { fg = p.fg_mute, bg = bg },

    -- Visual / search / incsearch
    Visual              = { bg = p.bg_menu_inact },
    VisualNOS           = { bg = p.bg_menu_inact },
    Search              = { fg = p.fg, bg = "#1f2733" },
    IncSearch           = { fg = p.bg, bg = p.accent, bold = true },
    CurSearch           = { fg = p.bg, bg = p.accent, bold = true },
    Substitute          = { fg = p.bg, bg = p.yellow, bold = true },
    MatchParen          = { fg = p.accent, bg = "#2a2f3a", bold = true },

    -- Whitespace
    Whitespace          = { fg = p.fg_invisible },
    NonText             = { fg = p.fg_invisible },
    SpecialKey          = { fg = p.fg_invisible },
    Conceal             = { fg = p.fg_mute },

    -- Status line
    StatusLine          = { fg = p.fg_dim2, bg = bg_dark },
    StatusLineNC        = { fg = p.fg_mute, bg = bg_dark },
    StatusLineTerm      = { fg = p.fg_dim2, bg = bg_dark },
    StatusLineTermNC    = { fg = p.fg_mute, bg = bg_dark },

    -- Tabs
    TabLine             = { fg = p.fg_dim, bg = p.bg_alt },
    TabLineFill         = { fg = p.fg_mute, bg = bg_dark },
    TabLineSel          = { fg = p.fg, bg = bg, bold = true },

    -- Title
    Title               = { fg = p.accent, bold = true },
    Directory           = { fg = p.accent },

    -- Pmenu / completion
    Pmenu               = { fg = p.fg_dim, bg = p.bg_float },
    PmenuSel            = { fg = p.fg, bg = p.bg_menu_sel, bold = true },
    PmenuKind           = { fg = p.syntax.type, bg = p.bg_float },
    PmenuKindSel        = { fg = p.syntax.type, bg = p.bg_menu_sel, bold = true },
    PmenuExtra          = { fg = p.fg_mute, bg = p.bg_float },
    PmenuExtraSel       = { fg = p.fg_mute, bg = p.bg_menu_sel },
    PmenuSbar           = { bg = p.bg_dropdown },
    PmenuThumb          = { bg = p.fg_mute },
    PmenuMatch          = { fg = p.accent, bold = true },
    PmenuMatchSel       = { fg = p.accent, bg = p.bg_menu_sel, bold = true },
    WildMenu            = { fg = p.fg, bg = p.bg_menu_sel },

    -- Quickfix / lists
    QuickFixLine        = { bg = p.bg_menu_inact, bold = true },

    -- Spell
    SpellBad            = { sp = p.red, undercurl = true },
    SpellCap            = { sp = p.blue_bright, undercurl = true },
    SpellLocal          = { sp = p.cyan, undercurl = true },
    SpellRare           = { sp = p.magenta, undercurl = true },

    -- Misc UI
    FloatShadow         = { bg = p.black, blend = 80 },
    FloatShadowThrough  = { bg = p.black, blend = 100 },
    Debug               = { fg = p.yellow },
    debugPC             = { bg = p.bg_statusdbg },
    debugBreakpoint     = { fg = p.red, bg = bg },

    -- Healthcheck
    healthError         = { fg = p.red },
    healthSuccess       = { fg = p.green },
    healthWarning       = { fg = p.yellow },
  }
end

return M
