# Claude Cream Website Theme

`theme.css` 保存 Website 类型的 Light / Dark 色彩 Token，与 Typora、Obsidian、Ghostty 主题并列管理。

## 文件

| 文件 | 用途 |
|---|---|
| `theme.css` | Website Light / Dark 色彩变量与博客兼容别名 |

## 来源

当前色值提取自：

```text
/Users/kakarrot/Dev/website/src/styles/global.css
```

这里只管理颜色变量，不包含博客的字体、布局、组件和动效样式。它是博客色彩的独立主题快照，不会覆盖 `tokens/tokens.json` 或其他客户端主题。

## 使用

将 `theme.css` 引入网站的全局样式入口，并通过 `html[data-theme="light"]` 或 `html[data-theme="dark"]` 切换主题。

```css
@import "./theme.css";
```

修改博客色彩体系时，应同步核对源文件和本文件，避免两个副本产生漂移。

## 验证

1. 对照源文件检查 Light / Dark 同名变量。
2. 确认 `html[data-theme]` 切换时画布、文字、强调色和代码背景同步变化。
3. 检查 `color-mix()` 在目标浏览器中的兼容性。
4. 运行 `git diff --check`。
