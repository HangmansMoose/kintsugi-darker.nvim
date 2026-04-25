-- Highlights for the most commonly used Neovim plugins.
--
-- Colors here trace back to the corresponding VSCode tokens wherever
-- possible (gitDecoration.*, editorSuggestWidget.*, list.*, etc.).

local M = {}

function M.get(p, opts)
  local s = p.syntax
  local bg = opts.transparent and p.none or p.bg
  local bg_float = opts.transparent and p.none or p.bg_float
  local bg_sb = opts.transparent and p.none or p.bg_dark

  local hl = {}

  -------------------------------------------------------------------------
  -- gitsigns.nvim / mini.diff / vim-signify
  -------------------------------------------------------------------------
  hl.GitSignsAdd            = { fg = p.green, bg = bg }
  hl.GitSignsChange         = { fg = p.yellow, bg = bg }
  hl.GitSignsDelete         = { fg = p.red, bg = bg }
  hl.GitSignsChangedelete   = { fg = p.yellow, bg = bg }
  hl.GitSignsTopdelete      = { fg = p.red, bg = bg }
  hl.GitSignsUntracked      = { fg = p.green, bg = bg }
  hl.GitSignsAddNr          = { fg = p.green, bg = bg }
  hl.GitSignsChangeNr       = { fg = p.yellow, bg = bg }
  hl.GitSignsDeleteNr       = { fg = p.red, bg = bg }
  hl.GitSignsAddLn          = { bg = "#1e2a1e" }
  hl.GitSignsChangeLn       = { bg = "#2a2a1e" }
  hl.GitSignsDeleteLn       = { bg = "#2a1e1e" }
  hl.GitSignsCurrentLineBlame = { fg = p.fg_mute, italic = true }
  hl.GitSignsAddInline      = { bg = "#1e2a1e" }
  hl.GitSignsDeleteInline   = { bg = "#2a1e1e" }
  hl.GitSignsChangeInline   = { bg = "#2a2a1e" }

  hl.SignifySignAdd         = hl.GitSignsAdd
  hl.SignifySignChange      = hl.GitSignsChange
  hl.SignifySignDelete      = hl.GitSignsDelete

  hl.MiniDiffSignAdd        = hl.GitSignsAdd
  hl.MiniDiffSignChange     = hl.GitSignsChange
  hl.MiniDiffSignDelete     = hl.GitSignsDelete
  hl.MiniDiffOverAdd        = { bg = "#1e2a1e" }
  hl.MiniDiffOverChange     = { bg = "#2a2a1e" }
  hl.MiniDiffOverDelete     = { bg = "#2a1e1e" }
  hl.MiniDiffOverContext    = { bg = p.bg_line }

  -------------------------------------------------------------------------
  -- Telescope
  -------------------------------------------------------------------------
  hl.TelescopeNormal            = { fg = p.fg_dim, bg = bg_float }
  hl.TelescopeBorder            = { fg = p.border, bg = bg_float }
  hl.TelescopePromptNormal      = { fg = p.fg, bg = p.bg_dropdown }
  hl.TelescopePromptBorder      = { fg = p.bg_dropdown, bg = p.bg_dropdown }
  hl.TelescopePromptTitle       = { fg = p.bg, bg = p.accent, bold = true }
  hl.TelescopePromptPrefix      = { fg = p.accent, bg = p.bg_dropdown }
  hl.TelescopePromptCounter     = { fg = p.fg_mute, bg = p.bg_dropdown }
  hl.TelescopeResultsNormal     = { fg = p.fg_dim, bg = bg_float }
  hl.TelescopeResultsBorder     = { fg = bg_float, bg = bg_float }
  hl.TelescopeResultsTitle      = { fg = bg_float, bg = bg_float }
  hl.TelescopePreviewNormal     = { fg = p.fg_dim, bg = bg_float }
  hl.TelescopePreviewBorder     = { fg = bg_float, bg = bg_float }
  hl.TelescopePreviewTitle      = { fg = p.bg, bg = p.green, bold = true }
  hl.TelescopeSelection         = { fg = p.fg, bg = p.bg_menu_sel, bold = true }
  hl.TelescopeSelectionCaret    = { fg = p.accent, bg = p.bg_menu_sel }
  hl.TelescopeMultiSelection    = { fg = p.accent }
  hl.TelescopeMultiIcon         = { fg = p.accent }
  hl.TelescopeMatching          = { fg = p.accent, bold = true }
  hl.TelescopeResultsDiffAdd    = { fg = p.green }
  hl.TelescopeResultsDiffChange = { fg = p.yellow }
  hl.TelescopeResultsDiffDelete = { fg = p.red }
  hl.TelescopeResultsDiffUntracked = { fg = p.green }
  hl.TelescopeResultsClass      = { fg = s.type }
  hl.TelescopeResultsField      = { fg = s.default }
  hl.TelescopeResultsFunction   = { fg = s.func }
  hl.TelescopeResultsMethod     = { fg = s.func }
  hl.TelescopeResultsVariable   = { fg = s.default }
  hl.TelescopeResultsComment    = { fg = s.comment }
  hl.TelescopeResultsLineNr     = { fg = p.fg_mute }

  -------------------------------------------------------------------------
  -- nvim-tree
  -------------------------------------------------------------------------
  hl.NvimTreeNormal             = { fg = p.fg_dim, bg = bg_sb }
  hl.NvimTreeNormalNC           = { fg = p.fg_dim, bg = bg_sb }
  hl.NvimTreeEndOfBuffer        = { fg = bg_sb, bg = bg_sb }
  hl.NvimTreeVertSplit          = { fg = p.border, bg = bg_sb }
  hl.NvimTreeWinSeparator       = { fg = p.border, bg = bg_sb }
  hl.NvimTreeCursorLine         = { bg = p.bg_menu_sel }
  hl.NvimTreeRootFolder         = { fg = p.accent, bold = true }
  hl.NvimTreeFolderIcon         = { fg = p.accent }
  hl.NvimTreeFolderName         = { fg = p.fg_dim }
  hl.NvimTreeOpenedFolderName   = { fg = p.fg, bold = true }
  hl.NvimTreeEmptyFolderName    = { fg = p.fg_mute }
  hl.NvimTreeIndentMarker       = { fg = p.border }
  hl.NvimTreeSymlink            = { fg = p.cyan }
  hl.NvimTreeExecFile           = { fg = p.green }
  hl.NvimTreeSpecialFile        = { fg = p.accent, underline = true }
  hl.NvimTreeImageFile          = { fg = p.magenta }
  hl.NvimTreeGitDirty           = { fg = p.yellow }
  hl.NvimTreeGitStaged          = { fg = p.green }
  hl.NvimTreeGitMerge           = { fg = p.red }
  hl.NvimTreeGitRenamed         = { fg = p.yellow }
  hl.NvimTreeGitNew             = { fg = p.green }
  hl.NvimTreeGitDeleted         = { fg = p.red }
  hl.NvimTreeGitIgnored         = { fg = p.fg_mute }
  hl.NvimTreeModifiedFile       = { fg = p.yellow }

  -------------------------------------------------------------------------
  -- neo-tree.nvim
  -------------------------------------------------------------------------
  hl.NeoTreeNormal              = { fg = p.fg_dim, bg = bg_sb }
  hl.NeoTreeNormalNC            = { fg = p.fg_dim, bg = bg_sb }
  hl.NeoTreeEndOfBuffer         = { fg = bg_sb, bg = bg_sb }
  hl.NeoTreeVertSplit           = { fg = p.border, bg = bg_sb }
  hl.NeoTreeWinSeparator        = { fg = p.border, bg = bg_sb }
  hl.NeoTreeRootName            = { fg = p.accent, bold = true }
  hl.NeoTreeDirectoryName       = { fg = p.fg_dim }
  hl.NeoTreeDirectoryIcon       = { fg = p.accent }
  hl.NeoTreeFileName            = { fg = p.fg_dim }
  hl.NeoTreeFileIcon            = { fg = p.fg_dim }
  hl.NeoTreeFileNameOpened      = { fg = p.fg, bold = true }
  hl.NeoTreeSymbolicLinkTarget  = { fg = p.cyan }
  hl.NeoTreeIndentMarker        = { fg = p.border }
  hl.NeoTreeExpander            = { fg = p.fg_mute }
  hl.NeoTreeCursorLine          = { bg = p.bg_menu_sel }
  hl.NeoTreeTitleBar            = { fg = p.bg, bg = p.accent, bold = true }
  hl.NeoTreeTabActive           = { fg = p.fg, bg = bg_sb, bold = true }
  hl.NeoTreeTabInactive         = { fg = p.fg_mute, bg = p.bg_alt }
  hl.NeoTreeTabSeparatorActive  = { fg = p.border, bg = bg_sb }
  hl.NeoTreeTabSeparatorInactive = { fg = p.border, bg = p.bg_alt }
  hl.NeoTreeGitAdded            = { fg = p.green }
  hl.NeoTreeGitConflict         = { fg = p.red }
  hl.NeoTreeGitDeleted          = { fg = p.red }
  hl.NeoTreeGitIgnored          = { fg = p.fg_mute }
  hl.NeoTreeGitModified         = { fg = p.yellow }
  hl.NeoTreeGitUntracked        = { fg = p.green }
  hl.NeoTreeGitStaged           = { fg = p.green }
  hl.NeoTreeGitUnstaged         = { fg = p.yellow }
  hl.NeoTreeGitRenamed          = { fg = p.yellow }
  hl.NeoTreeModified            = { fg = p.yellow }
  hl.NeoTreeDimText             = { fg = p.fg_mute }
  hl.NeoTreeMessage             = { fg = p.fg_mute, italic = true }
  hl.NeoTreeFloatBorder         = { fg = p.border, bg = bg_float }
  hl.NeoTreeFloatTitle          = { fg = p.accent, bg = bg_float, bold = true }

  -------------------------------------------------------------------------
  -- nvim-cmp
  -------------------------------------------------------------------------
  hl.CmpItemAbbr                = { fg = p.fg_dim, bg = "NONE" }
  hl.CmpItemAbbrDeprecated      = { fg = p.fg_mute, strikethrough = true }
  hl.CmpItemAbbrMatch           = { fg = p.accent, bold = true }
  hl.CmpItemAbbrMatchFuzzy      = { fg = p.accent, bold = true }
  hl.CmpItemMenu                = { fg = p.fg_mute, italic = true }
  hl.CmpItemKind                = { fg = s.type }
  hl.CmpItemKindText            = { fg = p.fg_dim }
  hl.CmpItemKindMethod          = { fg = s.func }
  hl.CmpItemKindFunction        = { fg = s.func }
  hl.CmpItemKindConstructor     = { fg = s.type }
  hl.CmpItemKindField           = { fg = s.default }
  hl.CmpItemKindVariable        = { fg = s.default }
  hl.CmpItemKindClass           = { fg = s.type }
  hl.CmpItemKindInterface       = { fg = s.type }
  hl.CmpItemKindModule          = { fg = s.type }
  hl.CmpItemKindProperty        = { fg = s.default }
  hl.CmpItemKindUnit            = { fg = s.number }
  hl.CmpItemKindValue           = { fg = s.number }
  hl.CmpItemKindEnum            = { fg = s.type }
  hl.CmpItemKindKeyword         = { fg = s.keyword, bold = true }
  hl.CmpItemKindSnippet         = { fg = p.green }
  hl.CmpItemKindColor           = { fg = p.magenta }
  hl.CmpItemKindFile            = { fg = p.fg_dim }
  hl.CmpItemKindReference       = { fg = s.link, underline = true }
  hl.CmpItemKindFolder          = { fg = p.accent }
  hl.CmpItemKindEnumMember      = { fg = s.constant }
  hl.CmpItemKindConstant        = { fg = s.constant }
  hl.CmpItemKindStruct          = { fg = s.type }
  hl.CmpItemKindEvent           = { fg = s.type }
  hl.CmpItemKindOperator        = { fg = s.operator }
  hl.CmpItemKindTypeParameter   = { fg = s.type }
  hl.CmpItemKindCopilot         = { fg = p.green_bright }
  hl.CmpGhostText               = { fg = p.fg_mute, italic = true }

  -------------------------------------------------------------------------
  -- blink.cmp
  -------------------------------------------------------------------------
  hl.BlinkCmpMenu               = { fg = p.fg_dim, bg = bg_float }
  hl.BlinkCmpMenuBorder         = { fg = p.border, bg = bg_float }
  hl.BlinkCmpMenuSelection      = { bg = p.bg_menu_sel, bold = true }
  hl.BlinkCmpLabel              = { fg = p.fg_dim }
  hl.BlinkCmpLabelDeprecated    = { fg = p.fg_mute, strikethrough = true }
  hl.BlinkCmpLabelMatch         = { fg = p.accent, bold = true }
  hl.BlinkCmpLabelDescription   = { fg = p.fg_mute }
  hl.BlinkCmpLabelDetail        = { fg = p.fg_mute }
  hl.BlinkCmpKind               = { fg = s.type }
  hl.BlinkCmpSource             = { fg = p.fg_mute, italic = true }
  hl.BlinkCmpGhostText          = { fg = p.fg_mute, italic = true }
  hl.BlinkCmpDoc                = { fg = p.fg_dim, bg = bg_float }
  hl.BlinkCmpDocBorder          = { fg = p.border, bg = bg_float }
  hl.BlinkCmpSignatureHelp      = { fg = p.fg_dim, bg = bg_float }
  hl.BlinkCmpSignatureHelpBorder = { fg = p.border, bg = bg_float }
  hl.BlinkCmpSignatureHelpActiveParameter = { fg = p.accent, bold = true }

  -------------------------------------------------------------------------
  -- bufferline.nvim
  -------------------------------------------------------------------------
  hl.BufferLineFill             = { fg = p.fg_mute, bg = bg_sb }
  hl.BufferLineBackground       = { fg = p.fg_mute, bg = p.bg_alt }
  hl.BufferLineBufferVisible    = { fg = p.fg_dim, bg = p.bg_alt }
  hl.BufferLineBufferSelected   = { fg = p.fg, bg = bg, bold = true }
  hl.BufferLineTab              = { fg = p.fg_mute, bg = p.bg_alt }
  hl.BufferLineTabSelected      = { fg = p.accent, bg = bg, bold = true }
  hl.BufferLineTabClose         = { fg = p.red, bg = bg_sb }
  hl.BufferLineIndicatorSelected = { fg = p.accent, bg = bg }
  hl.BufferLineSeparator        = { fg = p.border, bg = p.bg_alt }
  hl.BufferLineSeparatorVisible = { fg = p.border, bg = p.bg_alt }
  hl.BufferLineSeparatorSelected = { fg = p.border, bg = bg }
  hl.BufferLineCloseButton      = { fg = p.fg_mute, bg = p.bg_alt }
  hl.BufferLineCloseButtonVisible = { fg = p.fg_mute, bg = p.bg_alt }
  hl.BufferLineCloseButtonSelected = { fg = p.red, bg = bg }
  hl.BufferLineModified         = { fg = p.yellow, bg = p.bg_alt }
  hl.BufferLineModifiedVisible  = { fg = p.yellow, bg = p.bg_alt }
  hl.BufferLineModifiedSelected = { fg = p.yellow, bg = bg }
  hl.BufferLineDiagnosticSelected = { fg = p.red, bg = bg, bold = true }
  hl.BufferLineErrorSelected    = { fg = p.red, bg = bg, bold = true }
  hl.BufferLineWarningSelected  = { fg = p.yellow, bg = bg, bold = true }
  hl.BufferLineInfoSelected     = { fg = p.blue_bright, bg = bg, bold = true }
  hl.BufferLineHintSelected     = { fg = p.green, bg = bg, bold = true }

  -------------------------------------------------------------------------
  -- lualine (highlights only; for full theme use `theme = 'kintsugi'`
  -- adapter in your lualine config).
  -------------------------------------------------------------------------
  hl.lualine_a_normal           = { fg = p.bg, bg = p.accent, bold = true }
  hl.lualine_a_insert           = { fg = p.bg, bg = p.green, bold = true }
  hl.lualine_a_visual           = { fg = p.bg, bg = p.magenta, bold = true }
  hl.lualine_a_replace          = { fg = p.bg, bg = p.red, bold = true }
  hl.lualine_a_command          = { fg = p.bg, bg = p.yellow, bold = true }
  hl.lualine_a_terminal         = { fg = p.bg, bg = p.cyan, bold = true }
  hl.lualine_b_normal           = { fg = p.fg_dim, bg = p.bg_dropdown }
  hl.lualine_c_normal           = { fg = p.fg_dim2, bg = bg_sb }

  -------------------------------------------------------------------------
  -- nvim-notify
  -------------------------------------------------------------------------
  hl.NotifyERRORBorder          = { fg = p.red, bg = bg_float }
  hl.NotifyWARNBorder           = { fg = p.yellow, bg = bg_float }
  hl.NotifyINFOBorder           = { fg = p.blue_bright, bg = bg_float }
  hl.NotifyDEBUGBorder          = { fg = p.fg_mute, bg = bg_float }
  hl.NotifyTRACEBorder          = { fg = p.magenta, bg = bg_float }
  hl.NotifyERRORIcon            = { fg = p.red }
  hl.NotifyWARNIcon             = { fg = p.yellow }
  hl.NotifyINFOIcon             = { fg = p.blue_bright }
  hl.NotifyDEBUGIcon            = { fg = p.fg_mute }
  hl.NotifyTRACEIcon            = { fg = p.magenta }
  hl.NotifyERRORTitle           = { fg = p.red, bold = true }
  hl.NotifyWARNTitle            = { fg = p.yellow, bold = true }
  hl.NotifyINFOTitle            = { fg = p.blue_bright, bold = true }
  hl.NotifyDEBUGTitle           = { fg = p.fg_mute, bold = true }
  hl.NotifyTRACETitle           = { fg = p.magenta, bold = true }
  hl.NotifyERRORBody            = { fg = p.fg_dim, bg = bg_float }
  hl.NotifyWARNBody             = { fg = p.fg_dim, bg = bg_float }
  hl.NotifyINFOBody             = { fg = p.fg_dim, bg = bg_float }
  hl.NotifyDEBUGBody            = { fg = p.fg_dim, bg = bg_float }
  hl.NotifyTRACEBody            = { fg = p.fg_dim, bg = bg_float }

  -------------------------------------------------------------------------
  -- noice.nvim
  -------------------------------------------------------------------------
  hl.NoiceCmdline               = { fg = p.fg, bg = bg_float }
  hl.NoiceCmdlinePopup          = { fg = p.fg, bg = bg_float }
  hl.NoiceCmdlinePopupBorder    = { fg = p.accent, bg = bg_float }
  hl.NoiceCmdlinePopupTitle     = { fg = p.accent, bg = bg_float, bold = true }
  hl.NoiceCmdlineIcon           = { fg = p.accent }
  hl.NoiceCmdlinePrompt         = { fg = p.accent, bold = true }
  hl.NoiceConfirm               = { fg = p.fg, bg = bg_float }
  hl.NoiceConfirmBorder         = { fg = p.accent, bg = bg_float }
  hl.NoicePopup                 = { fg = p.fg, bg = bg_float }
  hl.NoicePopupBorder           = { fg = p.border, bg = bg_float }
  hl.NoicePopupmenu             = { fg = p.fg, bg = bg_float }
  hl.NoicePopupmenuBorder       = { fg = p.border, bg = bg_float }
  hl.NoicePopupmenuSelected     = { fg = p.fg, bg = p.bg_menu_sel, bold = true }
  hl.NoicePopupmenuMatch        = { fg = p.accent, bold = true }
  hl.NoiceMini                  = { fg = p.fg, bg = bg_float }
  hl.NoiceLspProgressTitle      = { fg = p.accent, bold = true }
  hl.NoiceLspProgressClient     = { fg = p.fg_dim2 }
  hl.NoiceLspProgressSpinner    = { fg = p.accent }

  -------------------------------------------------------------------------
  -- trouble.nvim
  -------------------------------------------------------------------------
  hl.TroubleNormal              = { fg = p.fg_dim, bg = bg_sb }
  hl.TroubleNormalNC            = { fg = p.fg_dim, bg = bg_sb }
  hl.TroubleText                = { fg = p.fg_dim }
  hl.TroubleCount               = { fg = p.bg, bg = p.accent, bold = true }
  hl.TroubleFile                = { fg = p.accent, bold = true }
  hl.TroubleFoldIcon            = { fg = p.fg_mute }
  hl.TroubleIndent              = { fg = p.border }
  hl.TroubleLocation            = { fg = p.fg_mute }
  hl.TroubleSignError           = { fg = p.red }
  hl.TroubleSignWarning         = { fg = p.yellow }
  hl.TroubleSignInformation     = { fg = p.blue_bright }
  hl.TroubleSignHint            = { fg = p.green }
  hl.TroubleSignOther           = { fg = p.fg_mute }
  hl.TroubleSource              = { fg = p.fg_mute, italic = true }
  hl.TroubleCode                = { fg = p.fg_mute }

  -------------------------------------------------------------------------
  -- which-key.nvim
  -------------------------------------------------------------------------
  hl.WhichKey                   = { fg = p.accent, bold = true }
  hl.WhichKeyGroup              = { fg = p.blue_bright }
  hl.WhichKeyDesc               = { fg = p.fg_dim }
  hl.WhichKeySeparator          = { fg = p.fg_mute }
  hl.WhichKeyFloat              = { fg = p.fg_dim, bg = bg_float }
  hl.WhichKeyBorder             = { fg = p.border, bg = bg_float }
  hl.WhichKeyValue              = { fg = p.fg_mute }

  -------------------------------------------------------------------------
  -- indent-blankline.nvim (both v2 and v3)
  -------------------------------------------------------------------------
  hl.IndentBlanklineChar        = { fg = p.border, nocombine = true }
  hl.IndentBlanklineContextChar = { fg = p.fg_mute, nocombine = true }
  hl.IndentBlanklineSpaceChar   = { fg = p.fg_invisible, nocombine = true }
  hl.IblIndent                  = { fg = p.border, nocombine = true }
  hl.IblWhitespace              = { fg = p.fg_invisible, nocombine = true }
  hl.IblScope                   = { fg = p.fg_mute, nocombine = true }

  -------------------------------------------------------------------------
  -- flash.nvim / leap.nvim / hop.nvim
  -------------------------------------------------------------------------
  hl.FlashBackdrop              = { fg = p.fg_mute }
  hl.FlashMatch                 = { fg = p.bg, bg = p.accent, bold = true }
  hl.FlashCurrent               = { fg = p.bg, bg = p.accent_bright or p.accent, bold = true }
  hl.FlashLabel                 = { fg = p.bg, bg = p.red, bold = true }
  hl.FlashPrompt                = { fg = p.fg, bg = bg_float }
  hl.FlashPromptIcon            = { fg = p.accent }

  hl.LeapMatch                  = { fg = p.bg, bg = p.accent, bold = true }
  hl.LeapLabelPrimary           = { fg = p.bg, bg = p.red, bold = true }
  hl.LeapLabelSecondary         = { fg = p.bg, bg = p.accent, bold = true }
  hl.LeapBackdrop               = { fg = p.fg_mute }

  hl.HopNextKey                 = { fg = p.bg, bg = p.red, bold = true }
  hl.HopNextKey1                = { fg = p.bg, bg = p.accent, bold = true }
  hl.HopNextKey2                = { fg = p.fg, bg = p.bg_menu_sel, bold = true }
  hl.HopUnmatched               = { fg = p.fg_mute }

  -------------------------------------------------------------------------
  -- mini.nvim family
  -------------------------------------------------------------------------
  hl.MiniCursorword             = { bg = p.bg_menu_inact }
  hl.MiniCursorwordCurrent      = { bg = p.bg_menu_inact }
  hl.MiniIndentscopeSymbol      = { fg = p.fg_mute }
  hl.MiniIndentscopeSymbolOff   = { fg = p.fg_gutter }
  hl.MiniStatuslineModeNormal   = { fg = p.bg, bg = p.accent, bold = true }
  hl.MiniStatuslineModeInsert   = { fg = p.bg, bg = p.green, bold = true }
  hl.MiniStatuslineModeVisual   = { fg = p.bg, bg = p.magenta, bold = true }
  hl.MiniStatuslineModeReplace  = { fg = p.bg, bg = p.red, bold = true }
  hl.MiniStatuslineModeCommand  = { fg = p.bg, bg = p.yellow, bold = true }
  hl.MiniStatuslineModeOther    = { fg = p.bg, bg = p.cyan, bold = true }
  hl.MiniStatuslineDevinfo      = { fg = p.fg_dim, bg = p.bg_dropdown }
  hl.MiniStatuslineFilename     = { fg = p.fg_dim2, bg = bg_sb }
  hl.MiniStatuslineFileinfo     = { fg = p.fg_dim, bg = p.bg_dropdown }
  hl.MiniStatuslineInactive     = { fg = p.fg_mute, bg = bg_sb }
  hl.MiniTablineCurrent         = { fg = p.fg, bg = bg, bold = true }
  hl.MiniTablineVisible         = { fg = p.fg_dim, bg = p.bg_alt }
  hl.MiniTablineHidden          = { fg = p.fg_mute, bg = p.bg_alt }
  hl.MiniTablineModifiedCurrent = { fg = p.yellow, bg = bg, bold = true }
  hl.MiniTablineModifiedVisible = { fg = p.yellow, bg = p.bg_alt }
  hl.MiniTablineModifiedHidden  = { fg = p.yellow, bg = p.bg_alt }
  hl.MiniTablineFill            = { bg = bg_sb }
  hl.MiniTablineTabpagesection  = { fg = p.fg, bg = p.bg_dropdown, bold = true }
  hl.MiniPickMatchCurrent       = { bg = p.bg_menu_sel, bold = true }
  hl.MiniPickMatchMarked        = { bg = p.bg_menu_inact }
  hl.MiniPickMatchRanges        = { fg = p.accent, bold = true }
  hl.MiniPickBorderText         = { fg = p.accent, bold = true }
  hl.MiniPickPrompt             = { fg = p.accent, bold = true }
  hl.MiniHipatternsFixme        = { fg = p.bg, bg = p.red, bold = true }
  hl.MiniHipatternsHack         = { fg = p.bg, bg = p.yellow, bold = true }
  hl.MiniHipatternsTodo         = { fg = p.bg, bg = p.blue_bright, bold = true }
  hl.MiniHipatternsNote         = { fg = p.bg, bg = p.green, bold = true }
  hl.MiniFilesBorder            = { fg = p.border, bg = bg_float }
  hl.MiniFilesBorderModified    = { fg = p.yellow, bg = bg_float }
  hl.MiniFilesCursorLine        = { bg = p.bg_menu_sel }
  hl.MiniFilesDirectory         = { fg = p.accent }
  hl.MiniFilesFile              = { fg = p.fg_dim }
  hl.MiniFilesNormal            = { fg = p.fg_dim, bg = bg_float }
  hl.MiniFilesTitle             = { fg = p.accent, bg = bg_float, bold = true }
  hl.MiniFilesTitleFocused      = { fg = p.accent, bg = bg_float, bold = true }

  -------------------------------------------------------------------------
  -- dashboard-nvim / alpha-nvim
  -------------------------------------------------------------------------
  hl.DashboardHeader            = { fg = p.accent, bold = true }
  hl.DashboardCenter            = { fg = p.fg_dim }
  hl.DashboardShortcut          = { fg = p.fg_mute }
  hl.DashboardFooter            = { fg = p.fg_mute, italic = true }
  hl.DashboardKey               = { fg = p.accent }
  hl.DashboardDesc              = { fg = p.fg_dim }
  hl.DashboardIcon              = { fg = p.accent }
  hl.DashboardProjectTitle      = { fg = p.accent, bold = true }
  hl.DashboardMruTitle          = { fg = p.accent, bold = true }
  hl.DashboardFiles             = { fg = p.fg_dim }

  hl.AlphaHeader                = { fg = p.accent, bold = true }
  hl.AlphaButtons               = { fg = p.fg_dim }
  hl.AlphaShortcut              = { fg = p.accent }
  hl.AlphaFooter                = { fg = p.fg_mute, italic = true }

  -------------------------------------------------------------------------
  -- lazy.nvim
  -------------------------------------------------------------------------
  hl.LazyButton                 = { fg = p.fg, bg = p.bg_btn }
  hl.LazyButtonActive           = { fg = p.fg, bg = p.bg_btn_hover, bold = true }
  hl.LazyH1                     = { fg = p.bg, bg = p.accent, bold = true }
  hl.LazyH2                     = { fg = p.accent, bold = true }
  hl.LazySpecial                = { fg = p.accent }
  hl.LazyProgressDone           = { fg = p.accent, bold = true }
  hl.LazyProgressTodo           = { fg = p.fg_mute, bold = true }
  hl.LazyReasonPlugin           = { fg = p.fg }
  hl.LazyReasonRequire          = { fg = p.fg_mute }
  hl.LazyReasonSource           = { fg = p.fg_mute }
  hl.LazyReasonEvent            = { fg = p.magenta }
  hl.LazyReasonStart            = { fg = p.green }
  hl.LazyReasonRuntime          = { fg = p.yellow }
  hl.LazyReasonKeys             = { fg = p.cyan }
  hl.LazyReasonCmd              = { fg = p.blue_bright }
  hl.LazyReasonFt               = { fg = p.magenta }
  hl.LazyDimmed                 = { fg = p.fg_mute }
  hl.LazyDir                    = { fg = p.fg_dim }
  hl.LazyUrl                    = { fg = s.link, underline = true }
  hl.LazyCommit                 = { fg = p.yellow }
  hl.LazyCommitType             = { fg = p.accent, bold = true }
  hl.LazyValue                  = { fg = p.fg_dim }
  hl.LazyProp                   = { fg = p.fg_mute }
  hl.LazyComment                = { fg = s.comment }
  hl.LazyNormal                 = { fg = p.fg_dim, bg = bg_float }

  -------------------------------------------------------------------------
  -- mason.nvim
  -------------------------------------------------------------------------
  hl.MasonHeader                = { fg = p.bg, bg = p.accent, bold = true }
  hl.MasonHeaderSecondary       = { fg = p.bg, bg = p.yellow, bold = true }
  hl.MasonHighlight             = { fg = p.accent }
  hl.MasonHighlightBlock        = { fg = p.bg, bg = p.accent }
  hl.MasonHighlightBlockBold    = { fg = p.bg, bg = p.accent, bold = true }
  hl.MasonHighlightSecondary    = { fg = p.yellow }
  hl.MasonHighlightBlockSecondary = { fg = p.bg, bg = p.yellow }
  hl.MasonHighlightBlockBoldSecondary = { fg = p.bg, bg = p.yellow, bold = true }
  hl.MasonMuted                 = { fg = p.fg_mute }
  hl.MasonMutedBlock            = { fg = p.fg_mute, bg = p.bg_dropdown }
  hl.MasonError                 = { fg = p.red }
  hl.MasonNormal                = { fg = p.fg_dim, bg = bg_float }

  -------------------------------------------------------------------------
  -- todo-comments.nvim
  -------------------------------------------------------------------------
  hl.TodoBgFIX                  = { fg = p.bg, bg = p.red, bold = true }
  hl.TodoBgHACK                 = { fg = p.bg, bg = p.yellow, bold = true }
  hl.TodoBgTODO                 = { fg = p.bg, bg = p.accent, bold = true }
  hl.TodoBgNOTE                 = { fg = p.bg, bg = p.blue_bright, bold = true }
  hl.TodoBgPERF                 = { fg = p.bg, bg = p.magenta, bold = true }
  hl.TodoBgWARN                 = { fg = p.bg, bg = p.yellow, bold = true }
  hl.TodoBgTEST                 = { fg = p.bg, bg = p.green, bold = true }
  hl.TodoFgFIX                  = { fg = p.red }
  hl.TodoFgHACK                 = { fg = p.yellow }
  hl.TodoFgTODO                 = { fg = p.accent }
  hl.TodoFgNOTE                 = { fg = p.blue_bright }
  hl.TodoFgPERF                 = { fg = p.magenta }
  hl.TodoFgWARN                 = { fg = p.yellow }
  hl.TodoFgTEST                 = { fg = p.green }
  hl.TodoSignFIX                = { fg = p.red }
  hl.TodoSignHACK               = { fg = p.yellow }
  hl.TodoSignTODO               = { fg = p.accent }
  hl.TodoSignNOTE               = { fg = p.blue_bright }
  hl.TodoSignPERF               = { fg = p.magenta }
  hl.TodoSignWARN               = { fg = p.yellow }
  hl.TodoSignTEST               = { fg = p.green }

  -------------------------------------------------------------------------
  -- nvim-dap / nvim-dap-ui
  -------------------------------------------------------------------------
  hl.DapBreakpoint              = { fg = p.red }
  hl.DapBreakpointCondition     = { fg = p.yellow }
  hl.DapLogPoint                = { fg = p.blue_bright }
  hl.DapStopped                 = { fg = p.green }
  hl.DapBreakpointRejected      = { fg = p.fg_mute }

  hl.DapUIBreakpointsCurrentLine = { fg = p.yellow, bold = true }
  hl.DapUIBreakpointsDisabledLine = { fg = p.fg_mute }
  hl.DapUIBreakpointsInfo       = { fg = p.green }
  hl.DapUIBreakpointsLine       = { fg = p.yellow }
  hl.DapUIBreakpointsPath       = { fg = p.accent }
  hl.DapUICurrentFrameName      = { fg = p.magenta, bold = true }
  hl.DapUIDecoration            = { fg = p.accent }
  hl.DapUIFloatBorder           = { fg = p.border, bg = bg_float }
  hl.DapUILineNumber            = { fg = p.fg_gutter }
  hl.DapUIModifiedValue         = { fg = p.yellow, bold = true }
  hl.DapUIPlayPause             = { fg = p.green }
  hl.DapUIPlayPauseNC           = { fg = p.green }
  hl.DapUIRestart               = { fg = p.green }
  hl.DapUIRestartNC             = { fg = p.green }
  hl.DapUIScope                 = { fg = p.accent, bold = true }
  hl.DapUISource                = { fg = p.magenta }
  hl.DapUIStepBack              = { fg = p.blue_bright }
  hl.DapUIStepInto              = { fg = p.blue_bright }
  hl.DapUIStepOut               = { fg = p.blue_bright }
  hl.DapUIStepOver              = { fg = p.blue_bright }
  hl.DapUIStop                  = { fg = p.red }
  hl.DapUIStopNC                = { fg = p.red }
  hl.DapUIThread                = { fg = p.green }
  hl.DapUIType                  = { fg = p.magenta }
  hl.DapUIValue                 = { fg = p.fg_dim }
  hl.DapUIVariable              = { fg = p.fg_dim }
  hl.DapUIWatchesEmpty          = { fg = p.fg_mute }
  hl.DapUIWatchesError          = { fg = p.red }
  hl.DapUIWatchesValue          = { fg = p.green }
  hl.DapUIWinSelect             = { fg = p.accent, bold = true }

  -------------------------------------------------------------------------
  -- aerial.nvim
  -------------------------------------------------------------------------
  hl.AerialLine                 = { bg = p.bg_menu_sel }
  hl.AerialGuide                = { fg = p.border }
  hl.AerialClassIcon            = { fg = s.type }
  hl.AerialFunctionIcon         = { fg = s.func }
  hl.AerialMethodIcon           = { fg = s.func }
  hl.AerialVariableIcon         = { fg = s.default }
  hl.AerialConstantIcon         = { fg = s.constant }
  hl.AerialStructIcon           = { fg = s.type }
  hl.AerialInterfaceIcon        = { fg = s.type }
  hl.AerialModuleIcon           = { fg = s.type }
  hl.AerialEnumIcon             = { fg = s.type }

  -------------------------------------------------------------------------
  -- nvim-navic
  -------------------------------------------------------------------------
  hl.NavicText                  = { fg = p.fg_dim }
  hl.NavicSeparator             = { fg = p.fg_mute }
  hl.NavicIconsFile             = { fg = p.fg_dim }
  hl.NavicIconsModule           = { fg = s.type }
  hl.NavicIconsNamespace        = { fg = s.type }
  hl.NavicIconsPackage          = { fg = s.type }
  hl.NavicIconsClass            = { fg = s.type }
  hl.NavicIconsMethod           = { fg = s.func }
  hl.NavicIconsProperty         = { fg = s.default }
  hl.NavicIconsField            = { fg = s.default }
  hl.NavicIconsConstructor      = { fg = s.type }
  hl.NavicIconsEnum             = { fg = s.type }
  hl.NavicIconsInterface        = { fg = s.type }
  hl.NavicIconsFunction         = { fg = s.func }
  hl.NavicIconsVariable         = { fg = s.default }
  hl.NavicIconsConstant         = { fg = s.constant }
  hl.NavicIconsString           = { fg = s.string }
  hl.NavicIconsNumber           = { fg = s.number }
  hl.NavicIconsBoolean          = { fg = s.number }
  hl.NavicIconsArray            = { fg = s.punctuation }
  hl.NavicIconsObject           = { fg = s.type }
  hl.NavicIconsKey              = { fg = s.keyword }
  hl.NavicIconsNull             = { fg = s.number }
  hl.NavicIconsEnumMember       = { fg = s.constant }
  hl.NavicIconsStruct           = { fg = s.type }
  hl.NavicIconsEvent            = { fg = s.type }
  hl.NavicIconsOperator         = { fg = s.operator }
  hl.NavicIconsTypeParameter    = { fg = s.type }

  -------------------------------------------------------------------------
  -- render-markdown.nvim
  -------------------------------------------------------------------------
  hl.RenderMarkdownH1           = { fg = s.storage, bold = true }
  hl.RenderMarkdownH2           = { fg = s.storage, bold = true }
  hl.RenderMarkdownH3           = { fg = s.keyword, bold = true }
  hl.RenderMarkdownH4           = { fg = s.keyword, bold = true }
  hl.RenderMarkdownH5           = { fg = s.type }
  hl.RenderMarkdownH6           = { fg = s.type }
  hl.RenderMarkdownH1Bg         = { bg = p.bg_line }
  hl.RenderMarkdownH2Bg         = { bg = p.bg_line }
  hl.RenderMarkdownH3Bg         = { bg = p.bg_line }
  hl.RenderMarkdownH4Bg         = { bg = p.bg_line }
  hl.RenderMarkdownH5Bg         = { bg = p.bg_line }
  hl.RenderMarkdownH6Bg         = { bg = p.bg_line }
  hl.RenderMarkdownCode         = { bg = p.bg_line }
  hl.RenderMarkdownCodeInline   = { fg = s.markup_raw, bg = p.bg_line }
  hl.RenderMarkdownBullet       = { fg = s.keyword }
  hl.RenderMarkdownDash         = { fg = p.border }
  hl.RenderMarkdownQuote        = { fg = p.fg_mute }
  hl.RenderMarkdownLink         = { fg = s.link, underline = true }
  hl.RenderMarkdownTableHead    = { fg = s.storage, bold = true }
  hl.RenderMarkdownTableRow     = { fg = p.fg_dim }
  hl.RenderMarkdownTableFill    = { fg = p.border }

  -------------------------------------------------------------------------
  -- snacks.nvim
  -------------------------------------------------------------------------
  hl.SnacksNormal               = { fg = p.fg_dim, bg = bg_float }
  hl.SnacksBorder               = { fg = p.border, bg = bg_float }
  hl.SnacksTitle                = { fg = p.accent, bg = bg_float, bold = true }
  hl.SnacksFooter               = { fg = p.fg_mute, bg = bg_float, italic = true }
  hl.SnacksDashboardHeader      = { fg = p.accent, bold = true }
  hl.SnacksDashboardTitle       = { fg = p.accent, bold = true }
  hl.SnacksDashboardDesc        = { fg = p.fg_dim }
  hl.SnacksDashboardFooter      = { fg = p.fg_mute, italic = true }
  hl.SnacksDashboardKey         = { fg = p.accent }
  hl.SnacksDashboardIcon        = { fg = p.accent }
  hl.SnacksDashboardFile        = { fg = p.fg_dim }
  hl.SnacksDashboardDir         = { fg = p.fg_mute }
  hl.SnacksPickerBorder         = { fg = p.border, bg = bg_float }
  hl.SnacksPickerMatch          = { fg = p.accent, bold = true }
  hl.SnacksPickerSelected       = { bg = p.bg_menu_sel, bold = true }
  hl.SnacksPickerCursorLine     = { bg = p.bg_menu_sel }

  -------------------------------------------------------------------------
  -- nvim-ufo
  -------------------------------------------------------------------------
  hl.UfoFoldedFg                = { fg = p.fg_dim }
  hl.UfoFoldedBg                = { bg = p.bg_fold }
  hl.UfoPreviewSbar             = { bg = p.bg_dropdown }
  hl.UfoPreviewThumb            = { bg = p.fg_mute }
  hl.UfoPreviewWinBar           = { fg = p.accent, bg = p.bg_fold, bold = true }
  hl.UfoPreviewCursorLine       = { bg = p.bg_menu_sel }
  hl.UfoFoldedEllipsis          = { fg = p.fg_mute }

  -------------------------------------------------------------------------
  -- leap / harpoon / fzf-lua / fidget
  -------------------------------------------------------------------------
  hl.HarpoonWindow              = { fg = p.fg_dim, bg = bg_float }
  hl.HarpoonBorder              = { fg = p.border, bg = bg_float }
  hl.HarpoonTitle               = { fg = p.accent, bold = true }
  hl.HarpoonCurrentFile         = { fg = p.accent, bold = true }

  hl.FzfLuaNormal               = { fg = p.fg_dim, bg = bg_float }
  hl.FzfLuaBorder               = { fg = p.border, bg = bg_float }
  hl.FzfLuaTitle                = { fg = p.accent, bg = bg_float, bold = true }
  hl.FzfLuaHeaderText           = { fg = p.accent }
  hl.FzfLuaHeaderBind           = { fg = p.fg_mute }
  hl.FzfLuaPathLineNr           = { fg = p.fg_mute }
  hl.FzfLuaPathColNr            = { fg = p.fg_mute }
  hl.FzfLuaBufName              = { fg = p.accent }
  hl.FzfLuaBufNr                = { fg = p.fg_mute }
  hl.FzfLuaTabTitle             = { fg = p.accent }
  hl.FzfLuaTabMarker            = { fg = p.accent, bold = true }
  hl.FzfLuaLiveSym              = { fg = p.accent }
  hl.FzfLuaCursor               = { fg = p.bg, bg = p.cursor }
  hl.FzfLuaCursorLine           = { bg = p.bg_menu_sel }
  hl.FzfLuaSearch               = { fg = p.accent, bold = true }

  hl.FidgetTitle                = { fg = p.accent, bold = true }
  hl.FidgetTask                 = { fg = p.fg_dim2 }

  -------------------------------------------------------------------------
  -- nvim-treesitter-context
  -------------------------------------------------------------------------
  hl.TreesitterContext          = { bg = p.bg_line }
  hl.TreesitterContextLineNumber = { fg = p.fg_line_active, bg = p.bg_line, bold = true }
  hl.TreesitterContextBottom    = { underline = true, sp = p.border }
  hl.TreesitterContextSeparator = { fg = p.border }

  -------------------------------------------------------------------------
  -- rainbow-delimiters.nvim
  -------------------------------------------------------------------------
  hl.RainbowDelimiterRed        = { fg = p.bracket1 }
  hl.RainbowDelimiterYellow     = { fg = p.bracket2 }
  hl.RainbowDelimiterBlue       = { fg = p.bracket3 }
  hl.RainbowDelimiterOrange     = { fg = p.bracket1 }
  hl.RainbowDelimiterGreen      = { fg = p.bracket2 }
  hl.RainbowDelimiterViolet     = { fg = p.bracket3 }
  hl.RainbowDelimiterCyan       = { fg = p.bracket1 }

  -------------------------------------------------------------------------
  -- copilot.lua
  -------------------------------------------------------------------------
  hl.CopilotSuggestion          = { fg = p.fg_mute, italic = true }
  hl.CopilotAnnotation          = { fg = p.fg_mute, italic = true }

  return hl
end

return M
