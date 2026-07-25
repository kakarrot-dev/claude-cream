# Claude Cream for Codex

Codex 的 Claude Cream 浅色与深色主题。界面色、字体和语义色均映射自 [`../../tokens/tokens.json`](../../tokens/tokens.json)。

## 导入

Codex 会分别保存浅色与深色主题，因此需要导入两次：

1. 打开 Codex → 设置 → 外观。
2. 在“浅色主题”中点击“导入”，粘贴 [`claude-cream-light.theme`](claude-cream-light.theme) 的完整单行内容。
3. 在“深色主题”中点击“导入”，粘贴 [`claude-cream-dark.theme`](claude-cream-dark.theme) 的完整单行内容。
4. 将外观模式设为“系统”，即可随系统自动切换。

主题启用了半透明侧边栏。UI 字体使用 `PingFang SC`，代码字体使用 `JetBrains Mono`，未安装代码字体时由 Codex 使用本机后备字体。

## Token 映射

| Codex 字段 | Light | Dark | Token 来源 |
|---|---|---|---|
| `accent` | `#b7791f` | `#e6bf7a` | `colors.*.primary` |
| `surface` | `#f5f3e9` | `#2d2e2d` | `colors.*.canvas` |
| `ink` | `#29271d` | `#e9e6dc` | `colors.*.ink` |
| `semanticColors.diffAdded` | `#4b6f3d` | `#9ab889` | `colors.*.success` |
| `semanticColors.diffRemoved` | `#7c1b13` | `#ea928a` | `colors.*.error` |
| `semanticColors.skill` | `#2c6f75` | `#75b5bc` | `colors.*.accent-teal` |

`contrast` 分别设为 `52` 与 `60`，以保留奶油纸张的柔和层次，并让深色模式中的边界清晰可辨。代码高亮基于 Codex 内置 `Absolutely` 主题，界面色仍由 Claude Cream 覆盖。

## 兼容性

主题文件使用 Codex 当前的 `codex-theme-v1:` 分享格式。若未来 Codex 更改导入协议，需要根据应用导出的最新主题字符串更新本目录。
