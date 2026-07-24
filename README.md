<p align="center">
  <img src="img/brand/logo.png" width="112" alt="Claude Cream logo">
</p>

<h1 align="center">Claude Cream</h1>

<p align="center">
  <img src="img/brand/banner.png" width="100%" alt="Claude Cream banner">
</p>

> Palette: warm ivory + amber · Mode: light + dark · Font: PingFang SC + JetBrainsMono Nerd Font Mono · License: [MIT](./LICENSE)

[![Palette](https://img.shields.io/badge/palette-warm_ivory_+_amber-b7791f)](https://github.com/kakarrot-dev/claude-cream)
[![Mode](https://img.shields.io/badge/mode-light_+_dark-2d2e2d)](https://github.com/kakarrot-dev/claude-cream)
[![Font](https://img.shields.io/badge/font-PingFang_SC_+_JetBrains_Mono-3d3d3a)](https://github.com/kakarrot-dev/claude-cream)
[![Themes](https://img.shields.io/badge/themes-Typora_%7C_Obsidian_%7C_Ghostty_%7C_Website-dccebf)](https://github.com/kakarrot-dev/claude-cream)
[![License](https://img.shields.io/badge/license-MIT-b7791f)](./LICENSE)

[中文版](README.zh-CN.md)

A warm editorial theme library for Typora, Obsidian, Ghostty, websites, and reusable illustration generation.

Inspired by the [Claude.com](https://claude.com) visual language: layered warm surfaces, restrained amber accents, and a typographic sensibility that makes code feel editorial rather than industrial.

---

## Highlights

- **Warm ivory canvas** `#f5f3e9` — softly layered instead of cold white
- **Amber accent** `#b7791f` — restrained, warm, and clear in interactive states
- **Warm charcoal dark canvas** `#2d2e2d` — depth without a hard black backdrop
- **Chinese-first typography** — PingFang SC system font for prose, JetBrains Mono for code
- **One visual language, five theme assets** — Typora, Obsidian, Ghostty, Website, and Illustration

## What's Inside

```
claude-cream/
├── themes/
│   ├── typora/              # Light + Dark Markdown writing theme
│   ├── obsidian/            # Dual-mode knowledge-base theme
│   ├── ghostty/             # Terminal palettes + Ghostty config
│   ├── website/             # Website Light + Dark color theme
│   └── illustration/        # Image-generation style + prompt template
├── img/brand/               # Project logo and banner
├── tokens/                  # Shared design tokens, single source of truth
└── tasks/                   # Project tracking
```

### Design Tokens

`tokens/tokens.json` is the single source of truth for the Typora, Obsidian, and Ghostty themes.

| Group | Description |
|---|---|
| `colors.light` / `colors.dark` | 26 semantic color variables per mode |
| `typography` | Font stacks, sizes, line heights |
| `spacing` / `rounded` | 8 spacing steps + 6 border-radius steps |
| `syntax.light` / `syntax.dark` | Syntax highlighting tokens (keywords, strings, comments, etc.) |

`tokens/tokens.json` drives Typora, Obsidian, and Ghostty through manual mapping. `themes/website` is a separately managed snapshot of the blog palette, while `themes/illustration` turns that website language into reusable image-generation rules.

## Install

### Typora

```bash
# macOS
cp themes/typora/*.css themes/typora/.claude-theme-base.css \
  "$HOME/Library/Application Support/abnerworks.Typora/themes/"
osascript -e 'quit app "Typora"' && sleep 1 && open -a Typora
```

Windows: `%APPDATA%\Typora\themes\` &middot; Linux: `~/.config/Typora/themes/`

> Theme file names must use **hyphens** — Typora rejects underscores.

### Obsidian

```bash
cp -R themes/obsidian "$HOME/Dev/obsidian-wiki/.obsidian/themes/Claude Cream"
```

Then: Settings &rarr; Appearance &rarr; Themes &rarr; Claude Cream. Dark mode follows Obsidian's native toggle.

Works with the [Style Settings](obsidian://show-plugin?id=obsidian-style-settings) plugin for extra customization.

### Ghostty

```bash
mkdir -p "$HOME/.config/ghostty/themes"
cp themes/ghostty/config.ghostty "$HOME/.config/ghostty/config"
cp themes/ghostty/claude-cream-light themes/ghostty/claude-cream-dark \
  "$HOME/.config/ghostty/themes/"
```

Restart Ghostty. Auto-switches with system appearance.

### Website

Import the standalone color theme into a website stylesheet:

```css
@import "./themes/website/theme.css";
```

Switch modes with `html[data-theme="light"]` and `html[data-theme="dark"]`. See [`themes/website/README.md`](themes/website/README.md) for scope and source.

### Illustration

Use [`themes/illustration/prompt-template.md`](themes/illustration/prompt-template.md) with [`themes/illustration/style.json`](themes/illustration/style.json) to create covers and editorial images that match the website.

Each theme folder contains its own README with installation, mapping, and validation notes.

## Design Principles

1. **Warm over cool** &mdash; deliberate warmth; no sterile gray or cold white
2. **Serif restraint** &mdash; PingFang SC carries enough character; avoids serif font fallback issues on Windows/Linux
3. **Local-first** &mdash; all assets work offline; no paid fonts, no cloud dependencies
4. **Clear sources of truth** &mdash; shared editor and terminal tokens stay in `tokens/`; Website and Illustration keep their own documented sources
5. **Minimal customization** &mdash; expose only what matters: page width, font size, accent color

## Requirements

| Platform | Minimum | Notes |
|---|---|---|
| Typora | 1.5+ | Windows / macOS / Linux |
| Obsidian | 1.4.0+ | All platforms |
| Ghostty | 1.0+ | macOS / Linux |
| Website theme | Modern browser | Requires `color-mix()` support |
| macOS | 12+ | PingFang SC system font |

**Fonts**:
- Prose: PingFang SC (built into macOS; system fallback on Windows/Linux)
- Code: JetBrainsMono Nerd Font Mono (install locally; [Nerd Fonts](https://www.nerdfonts.com/font-downloads) recommended)

## Contributing

This is a personal config project, so PRs are reviewed selectively. Issues and design discussions are welcome.

## License

MIT &mdash; see [LICENSE](./LICENSE).

## Credits

- Visual system inspired by [Anthropic Claude](https://claude.com)
- Reference themes: [amm10090/claude-warm-obsidian-theme](https://github.com/amm10090/claude-warm-obsidian-theme) &middot; [YiNNx/typora-theme-lapis](https://github.com/YiNNx/typora-theme-lapis) &middot; [kepano/obsidian-minimal](https://github.com/kepano/obsidian-minimal)
- Font: [JetBrains Mono](https://www.jetbrains.com/mono/) (OFL 1.1)
- Brand imagery: generated from the Claude Cream palette and illustration specification in this repository

---

Made with &#x2615; + amber by [KAKARROT](https://github.com/kakarrot-dev)
