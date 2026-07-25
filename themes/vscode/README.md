# Claude Cream for Cursor / VS Code

暖象牙、暖炭灰与克制琥珀金编辑器主题。Cursor 与 Visual Studio Code 共用同一份扩展目录，不需要 npm、`.vsix` 或扩展市场。

## 主题

| 主题 | 用途 |
|---|---|
| Claude Cream | 暖象牙日间模式 |
| Claude Cream Dark | 默认暖炭灰深色模式 |
| Claude Cream Dark Dimmed | 夜间低刺激模式 |
| Claude Cream High Contrast | 浅色高对比模式 |
| Claude Cream Dark High Contrast | 深色高对比模式 |

## 从 GitHub 安装

先通过 Git clone 或 GitHub 的 Download ZIP 获取仓库。

### macOS / Linux

Cursor：

```bash
mkdir -p "$HOME/.cursor/extensions"
rm -rf "$HOME/.cursor/extensions/kakarrot.claude-cream-0.2.0"
cp -R themes/vscode "$HOME/.cursor/extensions/kakarrot.claude-cream-0.2.0"
```

VS Code：

```bash
mkdir -p "$HOME/.vscode/extensions"
rm -rf "$HOME/.vscode/extensions/kakarrot.claude-cream-0.2.0"
cp -R themes/vscode "$HOME/.vscode/extensions/kakarrot.claude-cream-0.2.0"
```

### Windows PowerShell

Cursor：

```powershell
$target = "$env:USERPROFILE\.cursor\extensions\kakarrot.claude-cream-0.2.0"
New-Item -ItemType Directory -Force (Split-Path $target) | Out-Null
Remove-Item -Recurse -Force $target -ErrorAction SilentlyContinue
Copy-Item -Recurse themes\vscode $target
```

VS Code：

```powershell
$target = "$env:USERPROFILE\.vscode\extensions\kakarrot.claude-cream-0.2.0"
New-Item -ItemType Directory -Force (Split-Path $target) | Out-Null
Remove-Item -Recurse -Force $target -ErrorAction SilentlyContinue
Copy-Item -Recurse themes\vscode $target
```

安装后执行 `Developer: Reload Window`，再从 `Preferences: Color Theme` 选择主题。

删除旧目标目录后再复制，避免 `cp -R` 产生嵌套目录。以上命令只操作 Claude Cream 对应版本目录。

## 推荐字体

```json
{
  "editor.fontFamily": "\"JetBrains Mono\", \"SF Mono\", Menlo, Consolas, monospace",
  "editor.fontLigatures": true
}
```

字体不包含在主题扩展内，未安装 JetBrains Mono 时会使用后备字体。

## 用户颜色覆盖

全局 `workbench.colorCustomizations` 的优先级高于主题文件。若只想调整一个主题，请限定主题名称：

```json
{
  "workbench.colorCustomizations": {
    "[Claude Cream Dark]": {
      "editor.lineHighlightBackground": "#343533"
    }
  }
}
```

若出现白色当前行、GitHub 蓝选区或冷灰边框，先检查未限定主题的用户级颜色覆盖。

## Token 与验证

- 工作台颜色来自 `tokens/tokens.json` 的 `colors` 与 `editor`
- 语法高亮来自 `syntax`
- 默认 Light/Dark 各覆盖 221 个工作台状态、33 组 TextMate fallback 和 Semantic Highlighting
- 辅助主题通过 VS Code 原生 `include` 继承默认主题并覆盖模式差异

运行静态验证：

```bash
themes/vscode/scripts/validate-theme.sh
```

真实视觉检查使用 [`fixtures/README.md`](fixtures/README.md) 与同目录样例文件。
