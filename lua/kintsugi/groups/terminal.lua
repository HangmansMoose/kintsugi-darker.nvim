-- Neovim built-in terminal ANSI palette (terminal.ansi* from VSCode).

local M = {}

function M.apply(p)
  vim.g.terminal_color_0  = p.bg_dark     -- ansiBlack
  vim.g.terminal_color_1  = p.red         -- ansiRed
  vim.g.terminal_color_2  = p.green       -- ansiGreen
  vim.g.terminal_color_3  = p.yellow      -- ansiYellow
  vim.g.terminal_color_4  = p.blue        -- ansiBlue
  vim.g.terminal_color_5  = p.magenta     -- ansiMagenta
  vim.g.terminal_color_6  = p.cyan        -- ansiCyan
  vim.g.terminal_color_7  = p.fg          -- ansiWhite
  vim.g.terminal_color_8  = p.fg_gutter   -- ansiBrightBlack
  vim.g.terminal_color_9  = p.red_bright
  vim.g.terminal_color_10 = p.green_bright
  vim.g.terminal_color_11 = p.yellow_bright
  vim.g.terminal_color_12 = p.blue_bright
  vim.g.terminal_color_13 = p.magenta_bright
  vim.g.terminal_color_14 = p.cyan_bright
  vim.g.terminal_color_15 = p.white
end

return M
