-- Kintsugi theme for WezTerm
-- https://github.com/metalelf0/kintsugi-nvim
--
-- Usage:
--   local kintsugi = require("kintsugi")
--   return { colors = kintsugi }
--
-- Or copy the returned table into your wezterm.lua under `colors = { ... }`.

return {
  foreground      = "#cacac2",
  background      = "#131314",

  cursor_bg       = "#d4a943",
  cursor_border   = "#d4a943",
  cursor_fg       = "#0e0e0e",

  selection_bg    = "#47464c",
  selection_fg    = "#dddddd",

  scrollbar_thumb = "#33352d",
  split           = "#2a2a28",

  ansi = {
    "#131314", -- black
    "#b38f8f", -- red
    "#a3be8c", -- green
    "#ebcb8b", -- yellow
    "#6c7a8a", -- blue
    "#b3a3d3", -- magenta
    "#6ac6f2", -- cyan
    "#dddddd", -- white
  },
  brights = {
    "#444444", -- bright black
    "#d9a6a6", -- bright red
    "#c3de9c", -- bright green
    "#fbe4a8", -- bright yellow
    "#8fa3b3", -- bright blue
    "#d3a3d3", -- bright magenta
    "#8ac6f2", -- bright cyan
    "#ffffff", -- bright white
  },

  tab_bar = {
    background = "#131314",
    active_tab = {
      bg_color = "#161618",
      fg_color = "#dddddd",
      intensity = "Bold",
    },
    inactive_tab = {
      bg_color = "#131314",
      fg_color = "#969b8c",
    },
    inactive_tab_hover = {
      bg_color = "#20201f",
      fg_color = "#c9c4b8",
      italic = false,
    },
    new_tab = {
      bg_color = "#131314",
      fg_color = "#969b8c",
    },
    new_tab_hover = {
      bg_color = "#20201f",
      fg_color = "#dbad49",
    },
  },

  visual_bell = "#b8943a",

  indexed = {
    [16] = "#d4a943",
    [17] = "#b8943a",
  },
}
