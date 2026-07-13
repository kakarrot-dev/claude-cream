# Claude Cream — Token 系统说明

## 概述

`tokens.json` 是三平台主题的**单一真源（SSOT）**。所有颜色、字体、间距、圆角等设计变量只在此定义一次，三平台产物从此文件取值生成。

## Token 分组

| 分组 | 键 | 用途 | 消费平台 |
|---|---|---|---|
| `colors` | `light.*`, `dark.*` | 颜色体系：画布、强调色、文本、表面、语义色 | Typora CSS 变量 / Obsidian CSS 变量 / VSCode workbench 色 |
| `typography` | `font-*`, `size-*`, `weight-*` | 字体栈（PingFang SC + JetBrains Mono）和字号层级 | 各平台 font-family / font-size 声明 |
| `spacing` | `xxs` ~ `xxl`, `section` | 间距/内边距，8px 递增体系 | padding / margin 值 |
| `rounded` | `xs` ~ `xl`, `pill` | 圆角半径体系 | border-radius 值 |
| `syntax` | `light.*`, `dark.*` | 语法高亮色（关键字/字符串/注释等 11 类） | VSCode tokenColors / Typora CodeMirror 高亮 |
| `page` | `width`, `padding` | 编辑区页面宽度和内边距 | Typora `#write` / Obsidian `.markdown-preview-view` |
| `components` | — | 组件级 token 引用（按钮、卡片、代码窗、引用块等） | 设计参考，不直接注入代码 |

## 如何新增颜色变量

1. 在 `colors.light` 和 `colors.dark` 中同步添加同名字段（颜色值可不同）
2. 如果新增的是语法高亮色，同时在 `syntax.light` / `syntax.dark` 添加
3. 更新本文件"Token 分组"表（可选）
4. 三平台 CSS/JSON 里的对应值无需手动更新 —— 在生成阶段引用新 token 名即可

## 如何生成三平台产物

```
# Typora —— tokens.json 的值直接写入 CSS `:root` 变量块
tokens.json → claude_theme.css（Light）
tokens.json → claude_theme_dark.css（Dark）

# Obsidian —— tokens.json 的值写入 CSS `:root` / `.theme-dark` 变量块
tokens.json → theme.css（Light + Dark 二合一）

# VSCode —— tokens.json 的值写入 workbench colors + tokenColors
tokens.json → themes/claude-cream-color-theme.json（Light）
tokens.json → themes/claude-cream-dark-color-theme.json（Dark）
```

## 设计决策

- `colors.light.primary === "#cc785c"` — 珊瑚橙强调色，三平台统一
- `colors.dark.primary === "#e08b6f"` — 深色模式下提亮以维持足够对比度
- 字体策略：中文 `PingFang SC` 走系统调用（macOS 自带），英文代码 `JetBrains Mono` 由 Typora 内嵌
- 不做衬线标题，统一使用 PingFang SC
