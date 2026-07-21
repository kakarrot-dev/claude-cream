# Claude Cream — Token 系统说明

## 概述

`tokens.json` 是三平台主题的**单一真源（SSOT）**。所有颜色、字体、间距、圆角等设计变量只在此定义一次，再手工映射到三平台主题产物。

## Token 分组

| 分组 | 键 | 用途 | 消费平台 |
|---|---|---|---|
| `colors` | `light.*`, `dark.*` | 颜色体系：画布、强调色、文本、表面、语义色 | Typora CSS 变量 / Obsidian CSS 变量 / Ghostty palette |
| `typography` | `font-*`, `size-*`, `weight-*` | 字体栈（PingFang SC + JetBrains Mono）和字号层级 | 各平台 font-family / font-size 声明 |
| `spacing` | `xxs` ~ `xxl`, `section` | 间距/内边距，8px 递增体系 | padding / margin 值 |
| `rounded` | `xs` ~ `xl`, `pill` | 圆角半径体系 | border-radius 值 |
| `syntax` | `light.*`, `dark.*` | 语法高亮色（关键字/字符串/注释等 11 类） | Obsidian / Typora 代码高亮、Ghostty ANSI 色参考 |
| `page` | `width`, `padding` | 编辑区页面宽度和内边距 | Typora `#write` / Obsidian `.markdown-preview-view` |
| `components` | — | 组件级 token 引用（按钮、卡片、代码窗、引用块等） | 设计参考，不直接注入代码 |

## 如何新增颜色变量

1. 在 `colors.light` 和 `colors.dark` 中同步添加同名字段（颜色值可不同）
2. 如果新增的是语法高亮色，同时在 `syntax.light` / `syntax.dark` 添加
3. 更新本文件"Token 分组"表（可选）
4. 手工同步 Typora、Obsidian 与 Ghostty 中的对应值，并运行定向比对

## 如何同步三平台产物

```
# Typora —— 将 tokens.json 的值写入 CSS `:root` 变量块
tokens.json → claude-theme.css（Light）
tokens.json → claude-theme-dark.css（Dark）

# Obsidian —— tokens.json 的值写入 CSS `:root` / `.theme-dark` 变量块
tokens.json → theme.css（Light + Dark 二合一）

# Ghostty —— 将颜色与语法语义映射到背景、前景、光标、选区和 ANSI 16 色
tokens.json → claude-cream-light / claude-cream-dark
```

## 设计决策

- `colors.light.primary === "#b7791f"` — Light 模式使用克制的琥珀金强调色
- `colors.dark.primary === "#e6bf7a"` — Dark 模式提亮为柔和金色以维持对比度
- `colors.light.canvas === "#f5f3e9"` / `colors.dark.canvas === "#2d2e2d"` — 暖象牙与暖炭灰双画布
- 字体策略：中文 `PingFang SC` 走系统调用，代码使用 `JetBrains Mono`
- 当前主题产物采用手工映射；修改 token 后必须同步 Typora、Obsidian 与 Ghostty 文件
- 不做衬线标题，统一使用 PingFang SC
