# Claude Cream 主题展示

一份全面的 Markdown 元素预览，用于 Obsidian 和 Typora 截图。

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

这是一段普通的正文文字。Claude Cream 主题以暖色米黄画布和珊瑚橙强调色为设计语言，营造舒适的阅读与写作体验。正文行高为 1.65，字号 16px，阅读流畅。

这是**加粗文字**，这是*斜体文字*，这是***加粗斜体***，这是~~删除线文字~~，这是 `行内代码`，这是[超链接文字](https://claude.ai)。

---

## 引用

> 设计是一种将复杂问题转化为优雅解决方案的能力。
>
> —— 简洁、自然、不冗余。

> 嵌套引用同样支持：
>
> > 每一层引用都有对应的左边框颜色和背景区分。
> >
> > > 最深层的引用依然保持良好的可读性。

---

## 列表

### 无序列表

- 暖色米黄画布 `#faf9f5`，营造纸张般的温润感
- 珊瑚橙强调色 `#cc785c`，作为视觉锚点
  - 次级列表项，缩进层级清晰
  - 鼠标悬停时有轻微的背景反馈
    - 三级列表项依然有良好的视觉层级
- 深墨色文字 `#141413`，确保高对比度可读性

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
- [ ] VSCode 主题适配（规划中）
- [ ] GitHub 发布（延后）

---

## 代码

### 行内代码

使用命令 `pnpm install` 安装依赖，然后通过 `pnpm dev` 启动开发服务器。

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
| Obsidian | `theme.css` | Light / Dark | ✅ 已完成 |
| Typora | `claude-theme.css` | Light | ✅ 已完成 |
| Typora | `claude-theme-dark.css` | Dark | ✅ 已完成 |
| Ghostty | `claude-cream-dark` | Dark | ✅ 已完成 |
| VSCode | — | Both | ⏳ 规划中 |

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

> **注意：** 以上展示了所有常用的 Markdown 元素类型。
>
> 深色模式同样支持全部元素，配色会自动切换为 dark 色板。
>
> 推荐安装 `JetBrains Mono` 等宽字体以获得最佳代码渲染效果。
