# Claude Cream for Zed

Claude Cream 的 Zed 本地主题，包含：

- `Claude Cream Light`
- `Claude Cream Dark`

主题使用 Zed 官方 `themes/v0.2.0` schema，并从 `tokens/tokens.json` 手工映射编辑器表面、交互状态、语法高亮、Git 状态与终端 ANSI 色。

## 安装

### macOS / Linux

```bash
mkdir -p "$HOME/.config/zed/themes"
cp themes/zed/claude-cream.json "$HOME/.config/zed/themes/"
```

### Windows

将 `claude-cream.json` 复制到：

```text
%USERPROFILE%\AppData\Roaming\Zed\themes\
```

重新打开 Zed 的 Theme Selector，选择 `Claude Cream Light` 或 `Claude Cream Dark`。

如需跟随系统外观，在 Zed `settings.json` 中配置：

```json
{
  "theme": {
    "mode": "system",
    "light": "Claude Cream Light",
    "dark": "Claude Cream Dark"
  }
}
```

## Token 映射

| Zed 区域 | Token 来源 |
|---|---|
| 窗口、面板、标签与编辑器表面 | `editor.light` / `editor.dark` |
| 文本、边框与交互状态 | `colors.light` / `colors.dark` |
| 代码高亮 | `syntax.light` / `syntax.dark` |
| Git、诊断与提示状态 | `colors.*` + `editor.*.diff-*` |
| 集成终端 | Claude Cream Ghostty / VS Code ANSI 映射 |

字体不由 Zed 主题文件控制。建议在 Zed 设置中使用 JetBrains Mono：

```json
{
  "buffer_font_family": "JetBrains Mono",
  "terminal": {
    "font_family": "JetBrainsMono Nerd Font Mono"
  }
}
```

## 验证

```bash
jq empty themes/zed/claude-cream.json
```

还应使用 `https://zed.dev/schema/themes/v0.2.0.json` 校验，并在 Zed 中目视检查 Light / Dark、Python、TypeScript、JSON、Markdown、Diff、终端、搜索与 Agent Panel。

## 限制

- 这是本地文件安装，不包含 Zed Extension Store 发布配置。
- Zed 主题 schema 可能随客户端升级变化；修改时应以官方最新文档和 schema 为准。
