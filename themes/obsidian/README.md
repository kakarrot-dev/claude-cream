# Claude Cream for Obsidian

面向知识库阅读与编辑的暖色双模式主题，跟随 Obsidian 原生 Light / Dark 外观切换。

## 文件

| 文件 | 用途 |
|---|---|
| `theme.css` | 主题主体，包含 Light 与 Dark 变量及组件样式 |
| `manifest.json` | Obsidian 主题元数据 |
| `versions.json` | Obsidian 版本兼容信息 |
| `style-settings.json` | Style Settings 插件配置 |

## 安装

```bash
cp -R themes/obsidian \
  "$HOME/Dev/obsidian-wiki/.obsidian/themes/Claude Cream"
```

进入 Obsidian 的“设置 → 外观 → 主题”，选择 `Claude Cream`。如需调整页宽、字号和强调色，可安装 Style Settings 插件。

## 设计映射

- 核心色彩、排版和语法高亮来自 `tokens/tokens.json`。
- 阅读视图与编辑视图共享暖象牙、琥珀金和炭灰层级。
- 侧栏、标签页、命令面板、图谱、表格与代码区均覆盖双模式。
- 中文正文优先使用 PingFang SC，代码使用 JetBrains Mono。

## 验证

1. 检查主题在 Light / Dark 模式均可加载。
2. 核对阅读视图、源码视图、侧栏和命令面板。
3. 如修改 `manifest.json` 或 `versions.json`，确认 JSON 可解析。
4. 运行 `git diff --check`。
