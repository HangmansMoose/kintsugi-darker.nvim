# Kintsugi theme for Slack sidebar

Slack lets you paste a comma-separated list of hex colors as a sidebar
theme (Preferences → Themes → scroll to the bottom → "Enter a new theme
by pasting a list of 10 colors…").

The ten slots, in order, are:

1. Column BG
2. Menu BG Hover
3. Active Item
4. Active Item Text
5. Hover Item
6. Text Color
7. Active Presence
8. Mention Badge
9. Top Nav BG
10. Top Nav Text

## Kintsugi

Paste this string into the Slack theme picker:

```
#131314,#20201f,#b8943a,#131314,#20201f,#dddddd,#a3be8c,#b38f8f,#131314,#dddddd
```

Mapping back to the Kintsugi palette:

| Slot              | Color     | Palette name        |
| ----------------- | --------- | ------------------- |
| Column BG         | `#131314` | sidebar background  |
| Menu BG Hover     | `#20201f` | dropdown bg         |
| Active Item       | `#b8943a` | focus border / gold |
| Active Item Text  | `#131314` | sidebar background  |
| Hover Item        | `#20201f` | dropdown bg         |
| Text Color        | `#dddddd` | foreground          |
| Active Presence   | `#a3be8c` | green / added       |
| Mention Badge     | `#b38f8f` | red / deleted       |
| Top Nav BG        | `#131314` | sidebar background  |
| Top Nav Text      | `#dddddd` | foreground          |
