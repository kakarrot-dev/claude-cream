# Claude Cream 主题展示

一份覆盖常用 Markdown 元素的视觉 Fixture，用于 Typora、Obsidian、Cursor / VS Code 和 Zed 的主题截图与回归检查。

---

## 标题层级

# 这是一级标题 H1

## 这是二级标题 H2

### 这是三级标题 H3

#### 这是四级标题 H4

##### 这是五级标题 H5

###### 这是六级标题 H6

---

## 正文与强调

这是一段普通的正文文字。Claude Cream 使用暖象牙画布、琥珀金强调色和暖炭灰深色背景，在编辑器、Markdown 阅读器和终端之间保持一致的视觉语言。正文建议行高为 1.65，字号为 16px。

这是**加粗文字**，这是*斜体文字*，这是***加粗斜体***，这是~~删除线文字~~，这是 `行内代码`，这是[超链接文字](https://claude.ai)。

---

## 引用

> 设计是一种将复杂问题转化为优雅解决方案的能力。
>
> 简洁、自然、不冗余。

> 嵌套引用同样支持：
>
> > 每一层引用都有对应的左边框颜色和背景区分。
> >
> > > 最深层的引用依然保持良好的可读性。

---

## 列表

### 无序列表

- 暖象牙画布 `#f5f3e9`，保留纸张般的温润感
- 琥珀金强调色 `#b7791f`，作为视觉锚点
  - 次级列表项，缩进层级清晰
  - 鼠标悬停时有轻微的背景反馈
    - 三级列表项依然有良好的视觉层级
- 暖墨色文字 `#29271d`，保持清楚的正文对比度

### 有序列表

1. 下载主题包到 Typora / Obsidian 主题目录
2. 在偏好设置中启用 Claude Cream 主题
3. 开始享受温暖的编辑体验
   1. 支持代码高亮
   2. 支持数学公式
   3. 支持 Mermaid 图表
4. 根据个人偏好调整样式设置

### 任务列表

- [x] 浅色模式完成
- [x] 深色模式完成
- [x] Cursor / VS Code 五模式主题完成
- [x] Zed Light / Dark 主题完成
- [x] Image Generation 提示词完成

---

## 代码

### 行内代码

本项目不使用包管理器或开发服务器。修改主题后运行 `git diff --check`，Cursor / VS Code 主题使用 `themes/vscode/scripts/validate-theme.sh` 做静态验证。

### 代码块

```python
def fibonacci(n: int) -> int:
    """Generate the nth Fibonacci number."""
    a, b = 0, 1
    for _ in range(n):
        a, b = b, a + b
    return a

# 生成前 10 个斐波那契数
result = [fibonacci(i) for i in range(10)]
print(result)  # [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
```

---

## 表格

| 平台 | 文件名 | 模式 | 状态 |
|------|--------|------|------|
| Obsidian | `theme.css` | Light / Dark | 已完成 |
| Typora | `claude-theme.css` | Light | 已完成 |
| Typora | `claude-theme-dark.css` | Dark | 已完成 |
| Ghostty | `claude-cream-light` / `claude-cream-dark` | Light / Dark | 已完成 |
| Codex | `claude-cream-light.theme` / `claude-cream-dark.theme` | Light / Dark | 已完成 |
| Cursor / VS Code | `themes/*.json` | 五种模式 | 已完成 |
| Zed | `claude-cream.json` | Light / Dark | 已完成 |
| Image Generation | `*-prompt-template.md` | 插画 / 头像 / 壁纸 | 已完成 |

---

## 分割线

---

## 数学公式

行内公式：$E = mc^2$

块级公式：

$$
\int_{a}^{b} f(x) \, dx = F(b) - F(a)
$$

$$
\begin{pmatrix}
a_{11} & a_{12} & \cdots & a_{1n} \\
a_{21} & a_{22} & \cdots & a_{2n} \\
\vdots & \vdots & \ddots & \vdots \\
a_{m1} & a_{m2} & \cdots & a_{mn}
\end{pmatrix}
$$

---

## 脚注

这里有一条脚注[^1]，这里是另一条[^2]。

[^1]: 这是第一条脚注的内容，包含一些补充说明。
[^2]: 脚注也可以包含**格式**和 `代码`。

---

## 折叠/详情

<details>
<summary>点击展开查看详细信息</summary>

这是折叠区域内的内容。可以包含任意 Markdown 元素。

- 列表项一
- 列表项二

```python
print("Hello from inside a details block!")
```

</details>

---

## 水平并排

> **注意：** 以上内容用于检查常用 Markdown 元素，不代表客户端支持范围完全一致。
>
> 深色模式同样支持全部元素，配色会自动切换为 dark 色板。
>
> 推荐安装 `JetBrains Mono` 等宽字体以获得最佳代码渲染效果。
