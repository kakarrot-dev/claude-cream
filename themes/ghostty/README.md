# Claude Cream for Ghostty

面向终端与 AI CLI 长文本阅读的暖色 Light / Dark 主题，并提供一份跟随系统外观切换的 Ghostty 主配置。

## 文件

| 文件 | 用途 |
|---|---|
| `claude-cream-light` | Light 调色板与 ANSI 16 色 |
| `claude-cream-dark` | Dark 调色板与 ANSI 16 色 |
| `config.ghostty` | 字体、窗口、滚动、剪贴板和快捷键配置 |

## 安装

```bash
mkdir -p "$HOME/.config/ghostty/themes"
cp themes/ghostty/config.ghostty "$HOME/.config/ghostty/config"
cp themes/ghostty/claude-cream-light themes/ghostty/claude-cream-dark \
  "$HOME/.config/ghostty/themes/"
```

重启 Ghostty。`config.ghostty` 使用 `light:claude-cream-light,dark:claude-cream-dark` 跟随系统切换。

## 设计映射

- 背景、前景、光标、选区和 ANSI 16 色映射自 `tokens/tokens.json`。
- Light 使用暖象牙背景，Dark 使用暖炭灰背景。
- 琥珀金承担光标和强调色，青绿色承担 Cyan 语义。
- 推荐安装 JetBrainsMono Nerd Font Mono。

## 验证

1. 重启 Ghostty，确认配置无解析错误。
2. 分别切换系统 Light / Dark 外观。
3. 检查 ANSI 16 色、选区、光标和长文本滚动。
4. 运行 `git diff --check`。
