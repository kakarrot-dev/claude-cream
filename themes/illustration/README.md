# Claude Cream Illustration

Website 封面与文章配图的统一插画风格，供后续图像生成任务复用。

## 风格定位

暖色编辑工坊中的微缩叙事装置。画面将软件、工作流或抽象概念转译成可触摸的机械物件、纸张档案与桌面模型，保留克制的技术感和充足留白。

## 核心特征

- 暖象牙纸张或灰泥背景，避免纯白和冷灰。
- 主体通常位于中右区域，左侧保留可放标题的大面积负空间。
- 深炭黑金属、旧纸、亚麻、黄铜等真实材质。
- 琥珀金用于路径、节点和关键结构，青绿色只作微量状态点缀。
- 轻微俯视或平视三分之四视角，主体完整，边缘不过度裁切。
- 柔和自然侧光、温暖阴影、细腻但不过分锐利的产品摄影质感。
- 底部保留深色渐层，确保网站叠加浅色文字时可读。
- 画面不直接生成标题、Logo、UI 文案或无意义字符。

## 文件

- `style.json`：机器可读的构图、色彩、材质和限制。
- `prompt-template.md`：可直接替换主题变量的生成提示词。

## 参考资产

以下现有封面用于校准风格，不在本目录重复保存：

```text
/Users/kakarrot/Dev/website/public/images/vibe-coding/kakarrot-website/cover.webp
/Users/kakarrot/Dev/website/public/images/vibe-coding/wukong/cover.webp
/Users/kakarrot/Dev/website/public/images/vibe-coding/claude-cream/cover.webp
```

## 推荐规格

- 网站横版封面：`1600 × 900`，比例 `16:9`
- 社交分享图：`1200 × 630`
- 输出格式：归档使用 PNG，网站交付使用 WebP
- 安全区：左侧约 38% 不放关键主体，底部约 20% 避免高对比细节

## 使用

1. 从 `prompt-template.md` 复制主提示词。
2. 填写主题、核心机制、主体隐喻和输出尺寸。
3. 将参考封面作为风格参考图，而不是编辑目标。
4. 生成后检查留白、色板、材质、文字安全区和随机字符。
5. PNG 作为源文件归档，压缩后的 WebP 用于网站。

## 验证

- `style.json` 必须能被标准 JSON 解析器读取。
- 色板应与 Website 主题保持一致。
- 不在模型生成图内写标题、Logo 或 UI 文案。
- 新资产加入项目后检查 README 引用并运行 `git diff --check`。
