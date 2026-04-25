# Kintsugi extras

Port of the Kintsugi palette to a handful of popular tools. Drop any of
these in wherever the tool expects its config.

> The upstream VSCode theme uses **the same ANSI and UI palette** in both
> `Kintsugi Dark` and `Kintsugi Dark Flared` — the variants only differ
> in editor token colors. So there is a single theme file per tool;
> pair it with whichever Neovim variant you run.

## Index

| Tool              | File                                                     |
| ----------------- | -------------------------------------------------------- |
| kitty             | [`kitty/kintsugi.conf`](./kitty/kintsugi.conf)           |
| Alacritty         | [`alacritty/kintsugi.toml`](./alacritty/kintsugi.toml)   |
| Ghostty           | [`ghostty/kintsugi`](./ghostty/kintsugi)                 |
| WezTerm           | [`wezterm/kintsugi.lua`](./wezterm/kintsugi.lua)         |
| iTerm2            | [`iterm2/Kintsugi.itermcolors`](./iterm2/Kintsugi.itermcolors) |
| Windows Terminal  | [`windows-terminal/kintsugi.json`](./windows-terminal/kintsugi.json) |
| foot              | [`foot/kintsugi.ini`](./foot/kintsugi.ini)               |
| tmux              | [`tmux/kintsugi.tmux`](./tmux/kintsugi.tmux)             |
| fish shell        | [`fish/kintsugi.fish`](./fish/kintsugi.fish)             |
| Slack (sidebar)   | [`slack/kintsugi.md`](./slack/kintsugi.md)               |

## Quick usage

### kitty
```conf
# ~/.config/kitty/kitty.conf
include /path/to/kintsugi-nvim/extras/kitty/kintsugi.conf
```

### Alacritty
```toml
# ~/.config/alacritty/alacritty.toml
[general]
import = ["/path/to/kintsugi-nvim/extras/alacritty/kintsugi.toml"]
```

### Ghostty
Copy `ghostty/kintsugi` to `~/.config/ghostty/themes/kintsugi`, then:
```
# ~/.config/ghostty/config
theme = kintsugi
```

### WezTerm
```lua
-- ~/.wezterm.lua
local kintsugi = dofile("/path/to/kintsugi-nvim/extras/wezterm/kintsugi.lua")
return { colors = kintsugi }
```

### iTerm2
iTerm2 → Settings → Profiles → Colors → **Color Presets…** → Import…
→ select `iterm2/Kintsugi.itermcolors`, then pick **Kintsugi**.

### Windows Terminal
Open Settings JSON and append the contents of `windows-terminal/kintsugi.json`
as an entry in the top-level `"schemes"` array. Then set
`"colorScheme": "Kintsugi"` on the profiles you want.

### foot
```ini
# ~/.config/foot/foot.ini
include=/path/to/kintsugi-nvim/extras/foot/kintsugi.ini
```

### tmux
```tmux
# ~/.tmux.conf
source-file /path/to/kintsugi-nvim/extras/tmux/kintsugi.tmux
```

### fish
```fish
source /path/to/kintsugi-nvim/extras/fish/kintsugi.fish
# or drop the file into ~/.config/fish/conf.d/
```

### Slack
See [`slack/kintsugi.md`](./slack/kintsugi.md) — paste the comma-separated
color string into Preferences → Themes → custom theme.

## Core palette

For anyone porting Kintsugi to a new tool:

| Role             | Hex       |
| ---------------- | --------- |
| Background       | `#131314` (sidebar/terminal) · `#161618` (editor) |
| Foreground       | `#dddddd` (UI) · `#cacac2` (terminal) |
| Cursor           | `#d4a943` |
| Cursor text      | `#0e0e0e` |
| Selection bg     | `#47464c` (50% blend of `#91918780` on bg) |
| Gold accent      | `#b8943a` · `#dbad49` (bright) |

ANSI:

| #   | Color     | #    | Color (bright) |
| --- | --------- | ---- | -------------- |
| 0   | `#131314` | 8    | `#444444`      |
| 1   | `#b38f8f` | 9    | `#d9a6a6`      |
| 2   | `#a3be8c` | 10   | `#c3de9c`      |
| 3   | `#ebcb8b` | 11   | `#fbe4a8`      |
| 4   | `#6c7a8a` | 12   | `#8fa3b3`      |
| 5   | `#b3a3d3` | 13   | `#d3a3d3`      |
| 6   | `#6ac6f2` | 14   | `#8ac6f2`      |
| 7   | `#dddddd` | 15   | `#ffffff`      |
