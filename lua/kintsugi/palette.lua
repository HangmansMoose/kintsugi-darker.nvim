-- Color palette for Kintsugi Neovim theme.
-- Extracted 1:1 from the original VSCode theme by @ahatem:
--   https://github.com/ahatem/vscode-kintsugi

local M = {}

-- UI colors are shared between variants (matches the VSCode `colors` block,
-- which is identical between Kintsugi-Dark and Kintsugi-Dark-Flared).
local ui = {
  -- Backgrounds
  bg              = "#050505", -- editor.background
  bg_dark         = "#050505", -- sidebar, panel, terminal, titleBar
  bg_darker       = "#050505", -- panelSectionHeader
  bg_alt          = "#0b0b0b", -- inactive tab, diff unchanged region
  bg_line         = "#1d1d1c", -- editor.lineHighlightBackground
  bg_float        = "#0b0b0b", -- widgets, quick input, notifications
  bg_float_alt    = "#0b0b0b", -- suggest widget (with cc alpha — dropped for nvim)
  bg_hover        = "#1c1c1c", -- hover widget
  bg_menu_sel     = "#393b31", -- list.activeSelectionBackground
  bg_menu_inact   = "#32332b", -- list.inactiveSelectionBackground
  bg_dropdown     = "#20201f", -- dropdown.listBackground, badge, input
  bg_dropdown_alt = "#292928", -- dropdown.background, checkbox
  bg_fold         = "#1f1f1f", -- editor.foldBackground
  bg_peek         = "#252523", -- peekViewResult.background
  bg_peek_editor  = "#1f1f1e", -- peekViewEditor.background
  bg_peek_match   = "#373a33", -- peekView matchHighlightBackground
  bg_btn          = "#3e3b2c", -- button.background
  bg_btn_hover    = "#4b4735", -- button.hoverBackground
  bg_gutter_item  = "#32332b", -- editorGutter.itemBackground
  bg_statusdbg    = "#61502c", -- statusBar.debuggingBackground

  -- Borders
  border          = "#2a2a28", -- default border
  border_strong   = "#3a3a37", -- hover widget border
  border_peek     = "#4d4d47", -- peek view border
  border_focus    = "#b8943a", -- focusBorder / active accents
  border_tree     = "#565653", -- tree indent guide (full alpha)

  -- Foregrounds
  fg              = "#dddddd", -- editor.foreground
  fg_dim          = "#c9c4b8", -- activityBar.foreground, breadcrumb focus
  fg_dim2         = "#969b8c", -- sidebar titles, badges
  fg_mute         = "#75715e", -- inactive items, comments-range
  fg_gutter       = "#444444", -- editor line numbers
  fg_line_active  = "#b4aa60", -- active line number
  fg_invisible    = "#464741", -- whitespace (without trailing aa)

  -- Accents & semantic
  cursor          = "#40ff40", -- editorCursor.foreground
  accent          = "#dbad49", -- breadcrumb active, menu selection
  accent_dim      = "#b8943a", -- focusBorder, activityBar.activeBorder
  accent_hint     = "#dbac35", -- inlayHint, panelTitle.activeBorder
  accent_warm     = "#dbac35",

  -- Git / diagnostics / diff
  green           = "#a3be8c",
  red             = "#b38f8f",
  yellow          = "#ebcb8b",
  blue            = "#6c7a8a",
  blue_bright     = "#8fa3b3",
  cyan            = "#6ac6f2",
  cyan_bright     = "#8ac6f2",
  magenta         = "#b3a3d3",
  magenta_bright  = "#d3a3d3",
  green_bright    = "#c3de9c",
  red_bright      = "#d9a6a6",
  yellow_bright   = "#fbe4a8",

  -- Bracket rainbow (same hue, different luma/alpha in VSCode).
  bracket1        = "#868165", -- foreground1 E6
  bracket2        = "#9a9578", -- foreground2 B3 (approximated solid)
  bracket3        = "#56543f", -- foreground3 80 (approximated solid)
  bracket_err     = "#b38f8f",

  -- Misc
  none            = "NONE",
  black           = "#000000",
  white           = "#ffffff",
}

-- Syntax colors for Kintsugi Dark (the "Original").
-- Calm, desaturated palette with gilded keywords.
local syntax_dark = {
  default      = "#dddddd", -- variables, functions, properties
  comment      = "#af9661",
  string       = "#98c379",
  number       = "#819aff",
  keyword      = "#DBAD49", -- bold
  type         = "#939799", -- types, support, constants
  annotation   = "#678E87", -- Java annotations
  invalid      = "#b38f8f",
  punctuation  = "#868165",
  operator     = "#dddddd",
  storage      = "#DBAD49",
  self         = "#DBAD49",
  func         = "#dddddd",
  constant     = "#939799",
  markup_raw   = "#939799",
  diff_header  = "#75715E",
  link         = "#8fa3b3",
}

-- Syntax colors for Kintsugi Dark Flared (the "Warm" variant).
-- Rich oranges, terracotta, and deep golds.
local syntax_flared = {
  default      = "#BCAC8F", -- base text + variables
  comment      = "#5f5f5f",
  string       = "#cc7f66",
  number       = "#DB9833",
  keyword      = "#D66848", -- bold
  type         = "#798283", -- entity names, types, functions, classes
  annotation   = "#678E87",
  invalid      = "#b38f8f",
  punctuation  = "#7f7b66",
  operator     = "#E08542",
  storage      = "#DBAD49", -- storage, this/self, tags (bold)
  self         = "#DBAD49",
  func         = "#798283",
  constant     = "#DB9833",
  support      = "#E08542", -- support.type/class/function/constant
  pointer      = "#EBA96C",
  markup_raw   = "#cc7f66",
  markup_link  = "#798283",
  diff_header  = "#75715E",
  link         = "#8fa3b3",
}

local function build(variant)
  local syntax = variant == "flared" and syntax_flared or syntax_dark
  local p = {}
  for k, v in pairs(ui) do p[k] = v end
  p.syntax = syntax
  p.variant = variant
  return p
end

function M.get(variant)
  if variant ~= "flared" then variant = "dark" end
  return build(variant)
end

return M
