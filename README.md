# kintsugi.nvim

A Neovim port of [@ahatem](https://github.com/ahatem)'s beautiful
[Kintsugi](https://github.com/ahatem/vscode-kintsugi) VSCode theme.

## Variants

Two variants, faithful to the originals.

### **kintsugi-dark** — the calm, minimalist original with gilded keywords.

<img width="438" height="525" margin="20px 0" alt="Screenshot 2026-04-25 at 18 15 38" src="https://github.com/user-attachments/assets/a4010e24-a111-41e4-a5c0-6f41eb07b1b3" />

### **kintsugi-flared** — the warm autumn/campfire palette.

<img width="438" height="525" margin="20px 0" alt="Screenshot 2026-04-25 at 18 15 17" src="https://github.com/user-attachments/assets/3e529989-3342-4906-9497-9bf29457995c" />

## Install

### lazy.nvim

```lua
{
  "metalelf0/kintsugi-nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("kintsugi").setup({
      variant = "dark",        -- "dark" | "flared"
      transparent = false,
      terminal_colors = true,
      bold_keywords = true,
      italic_comments = false,
    })
    vim.cmd.colorscheme("kintsugi-dark") -- or "kintsugi-flared"
  end,
}
```

### packer.nvim

```lua
use("metalelf0/kintsugi-nvim")
vim.cmd.colorscheme("kintsugi-dark")
```

## Configuration

All options are optional — defaults match the VSCode theme as closely as
possible.

| Option            | Type    | Default  | Description                                  |
| ----------------- | ------- | -------- | -------------------------------------------- |
| `variant`         | string  | `"dark"` | `"dark"` or `"flared"`                       |
| `transparent`     | boolean | `false`  | Skip the editor background                   |
| `terminal_colors` | boolean | `true`   | Populate `g:terminal_color_*`                |
| `bold_keywords`   | boolean | `true`   | Match the original's bold keywords/storage   |
| `italic_comments` | boolean | `false`  | Off in the original; on if you prefer italic |

You can also load a variant imperatively, e.g. from a toggle keymap:

```lua
require("kintsugi").load("flared")
```

## Supported plugins

Tuned highlights for:

- gitsigns.nvim, vim-signify, mini.diff
- telescope.nvim, fzf-lua
- nvim-tree.lua, neo-tree.nvim, mini.files, harpoon
- nvim-cmp, blink.cmp, copilot.lua
- bufferline.nvim, lualine.nvim (basic groups), mini.tabline / mini.statusline
- nvim-notify, noice.nvim, fidget.nvim
- trouble.nvim, aerial.nvim, nvim-navic
- which-key.nvim, indent-blankline.nvim, mini.indentscope
- flash.nvim, leap.nvim, hop.nvim
- dashboard-nvim, alpha-nvim, snacks.nvim
- lazy.nvim, mason.nvim
- todo-comments.nvim, mini.hipatterns
- nvim-dap / nvim-dap-ui
- render-markdown.nvim, nvim-ufo
- nvim-treesitter-context, rainbow-delimiters.nvim

Plus the full Tree-sitter and LSP semantic-token sets.

## Extras

Matching themes for kitty, Alacritty, Ghostty, WezTerm, iTerm2, Windows
Terminal, foot, tmux, fish, and Slack live under
[`extras/`](./extras/README.md). The VSCode source uses the same ANSI/UI
palette in both variants, so one theme file per tool covers both.

## Credits

- Original VSCode theme: [vscode-kintsugi](https://github.com/ahatem/vscode-kintsugi)
  by [@ahatem](https://github.com/ahatem).
- The Kintsugi name and philosophy — 金継ぎ.

## AI Disclaimer

The port was done using Claude Code. Copying colors and translating highlight groups is a tedious task that AI can do faster than us, and allows us to save time for better things in life... as using this gorgeous theme do write amazing code :) 

## License

Same spirit as the upstream (MIT). See upstream for details.
