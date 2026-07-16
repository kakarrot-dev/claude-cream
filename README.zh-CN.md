<p align="center">
  <img src="img/brand/logo.svg" width="112" alt="Claude Cream Logo">
</p>

<h1 align="center">Claude Cream</h1>

<p align="center">
  <img src="img/brand/banner.svg" width="100%" alt="Claude Cream 项目横幅">
</p>

[![Palette](https://img.shields.io/badge/palette-cream_+_coral-cc785c)](https://github.com/kakarrot0109/claude-cream)
[![Mode](https://img.shields.io/badge/mode-light_+_dark-181715)](https://github.com/kakarrot0109/claude-cream)
[![Font](https://img.shields.io/badge/font-PingFang_SC_+_JetBrains_Mono-3d3d3a)](https://github.com/kakarrot0109/claude-cream)
[![License](https://img.shields.io/badge/license-MIT-5db872)](./LICENSE)

暖色调编辑工作台 —— 覆盖 Typora / Obsidian / Ghostty 与 AI CLI 的统一设计系统。

设计灵感来自 [Claude.com](https://claude.com) 的视觉语言：温暖的画布、克制的珊瑚色、以及让代码看起来像印刷物而非工业面板的排版质感。

---

## 特点

- **暖米黄画布** `#faf9f5` &mdash; 不是纯白，像一张温润的纸
- **珊瑚橙强调** `#cc785c` &mdash; 签名色，人文而不刺眼
- **深墨代码窗** `#181715` &mdash; 反差留白，让代码有仪式感
- **中文优先排版** &mdash; 正文用 PingFang SC 系统字体，代码用 JetBrains Mono
- **一套设计语言，四个平台** &mdash; Typora / Obsidian / Ghostty 主题 + AI CLI 配置全部对齐

## 目录结构

```
claude-cream/
├── themes/
│   ├── typora/              # 主题（Light + Dark 双模式）
│   ├── obsidian/            # 主题（单文件双模式 + Style Settings）
│   └── ghostty/             # 终端主题（Light + Dark）+ 主配置
├── clients/
│   ├── claude-code/         # Claude Code 项目级 CLAUDE.md
│   ├── codex/               # Codex CLI 项目级 AGENTS.md
│   └── cursor/              # Cursor 编辑器 settings.json
├── tokens/                  # 跨平台共享设计 token（单一真源）
└── tasks/                   # 项目跟踪
```

### 设计 Token

`tokens/tokens.json` 是跨平台颜色的唯一真源。

| 分组 | 说明 |
|---|---|
| `colors.light` / `colors.dark` | 25 个语义色变量，Light + Dark 双套 |
| `typography` | 字体栈 + 字号 + 行高 |
| `spacing` / `rounded` | 间距 8 档 + 圆角 6 档 |
| `syntax.light` / `syntax.dark` | 代码高亮语义色（关键字 / 字符串 / 注释等）|

修改一处 token，三平台主题同步更新（Typora / Obsidian 手动映射，Ghostty 直读 palette）。

## 安装

### Typora

```bash
# macOS
cp themes/typora/claude-theme.css themes/typora/claude-theme-dark.css \
  "$HOME/Library/Application Support/abnerworks.Typora/themes/"
osascript -e 'quit app "Typora"' && sleep 1 && open -a Typora
```

Windows：`%APPDATA%\Typora\themes\` &middot; Linux：`~/.config/Typora/themes/`

> 主题文件名必须用**连字符**，否则 Typora 无法加载。

### Obsidian

```bash
cp -R themes/obsidian "$HOME/Dev/obsidian-wiki/.obsidian/themes/Claude Cream"
```

进入 Obsidian &rarr; 设置 &rarr; 外观 &rarr; 主题 &rarr; 选择 Claude Cream。深色模式跟随 Obsidian 原生切换联动。

配合 [Style Settings](obsidian://show-plugin?id=obsidian-style-settings) 插件可额外自定义。

### Ghostty

```bash
mkdir -p "$HOME/.config/ghostty/themes"
cp themes/ghostty/config.ghostty "$HOME/.config/ghostty/config"
cp themes/ghostty/claude-cream-light themes/ghostty/claude-cream-dark \
  "$HOME/.config/ghostty/themes/"
```

重启 Ghostty，自动跟随系统外观切换。

### AI CLI

| CLI | 配置 |
|---|---|
| Claude Code | `clients/claude-code/CLAUDE.md` &rarr; 项目根目录或 `~/.claude/CLAUDE.md` |
| Codex CLI | `clients/codex/AGENTS.md` &rarr; 项目根目录 |
| Cursor | `clients/cursor/settings.json` &rarr; 合并进 Cursor 用户设置 |

## 设计原则

1. **暖色优先** &mdash; 刻意选择暖色调，不做冷灰白
2. **克制衬线** &mdash; PingFang SC 足以撑起编辑气质，避免 Windows/Linux 崩坏
3. **本地优先** &mdash; 所有配置离线可用，不依赖付费字体或云服务
4. **单一真源** &mdash; `tokens/tokens.json` 驱动所有平台
5. **精简自定义** &mdash; 只暴露真正常用的选项：页宽、字号、主色

## 环境要求

| 平台 | 最低版本 | 备注 |
|---|---|---|
| Typora | 1.5+ | Windows / macOS / Linux |
| Obsidian | 1.4.0+ | 全平台 |
| Ghostty | 1.0+ | macOS / Linux |
| macOS | 12+ | PingFang SC 系统字体 |

**字体**：
- 正文：PingFang SC（macOS 系统自带；Windows/Linux 使用系统 fallback）
- 代码：JetBrains Mono（Typora 已内嵌；Ghostty/Obsidian 需系统安装，推荐 [JetBrainsMono Nerd Font](https://www.nerdfonts.com/font-downloads)）

## 贡献

个人配置项目，PR 谨慎接受。欢迎 Issue 讨论设计选择、报告 Bug、提出新平台适配建议。

## 许可证

MIT &mdash; 详见 [LICENSE](./LICENSE)。

## 致谢

- 视觉系统灵感来自 [Anthropic Claude](https://claude.com)
- 参考主题：[YiNNx/typora-theme-lapis](https://github.com/YiNNx/typora-theme-lapis) &middot; [kepano/obsidian-minimal](https://github.com/kepano/obsidian-minimal)
- 字体：[JetBrains Mono](https://www.jetbrains.com/mono/)（OFL 1.1）

---

用 &#x2615; + 珊瑚橙制作 by [KAKARROT](https://github.com/kakarrot0109)
