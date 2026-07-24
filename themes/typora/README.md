# Claude Cream for Typora

面向长文写作与 Markdown 阅读的暖色双主题，正文使用系统中文字体，代码使用 JetBrains Mono。

## 文件

| 文件 | 用途 |
|---|---|
| `claude-theme.css` | Light 主题入口 |
| `claude-theme-dark.css` | Dark 主题入口 |
| `.claude-theme-base.css` | 两种模式共享的排版与组件样式 |

## 安装

macOS：

```bash
cp themes/typora/*.css themes/typora/.claude-theme-base.css \
  "$HOME/Library/Application Support/abnerworks.Typora/themes/"
```

Windows 使用 `%APPDATA%\Typora\themes\`，Linux 使用 `~/.config/Typora/themes/`。

重启 Typora 后，在主题菜单选择 `Claude Theme` 或 `Claude Theme Dark`。

## 设计映射

- 颜色、字体、间距和圆角来自 `tokens/tokens.json`。
- Light 使用暖象牙画布，Dark 使用暖炭灰画布。
- 标题、引用、表格、侧栏、行内代码和代码块保持同一语义层级。
- 文件名必须使用连字符，Typora 无法加载下划线主题名。

## 验证

1. 检查三个 CSS 文件均已复制。
2. 分别打开 Light 与 Dark 主题。
3. 使用根目录 `markdown-showcase.md` 核对标题、列表、引用、表格与代码块。
4. 运行 `git diff --check`。
