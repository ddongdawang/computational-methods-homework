# 计算方法 作业（LaTeX）

深圳大学医学部生物医学工程学院 · 计算方法课程作业，使用 **XeLaTeX + ctex** 排版（中文）。

主文件：`计算方法_作业01.tex`

## 编译方式（三选一）

### 1. GitHub Codespaces（云端编辑 + 实时预览，无需本地安装）

1. 打开仓库页面，点绿色 **Code** 按钮 → **Codespaces** → **Create codespace on main**
2. 等待容器构建（首次约几分钟，会自动装好完整中文 LaTeX 环境 + LaTeX Workshop 插件）
3. 打开 `计算方法_作业01.tex`，保存后自动用 xelatex 编译，右侧实时预览 PDF
4. 需要导出 PDF：右键 PDF 预览 → 下载，或直接用下面的 Actions

> 免费账号每月有 Codespaces 额度限制，用完可改用方式 2/3。

### 2. GitHub Actions（push 自动出 PDF，零成本）

每次 `push` 到 `main` 分支（且改动了 `.tex` 文件），GitHub 会自动用 XeLaTeX 编译：

- 到仓库 **Actions** 页 → 点某次 `Build LaTeX PDF` 运行 → 底部 **Artifacts** 下载 `latex-pdf`
- 也可在 Actions 页点 **Run workflow** 手动触发

### 3. 本地编译

```bash
# 需自行安装 TeX Live（Windows 推荐 texlive，含 ctex 中文字体）
latexmk -xelatex -interaction=nonstopmode 计算方法_作业01.tex
# 或直接
xelatex 计算方法_作业01.tex
```

## 目录结构

```
.
├── 计算方法_作业01.tex        # 作业主文件（封面 + 5 题及解答）
├── matlab代码/               # 第 5 题 myDoolittle.m 及测试脚本
├── .devcontainer/           # Codespaces 云环境定义（Dockerfile + 配置）
├── .github/workflows/       # Actions 自动编译配置
└── README.md
```

## 说明

- 必须用 **XeLaTeX** 编译（中文 ctex 依赖），pdfLaTeX 会报错
- `.gitignore` 默认忽略 `*.pdf`，最终 PDF 从 Actions Artifacts 下载；如需把 PDF 也提交到仓库，删除 `.gitignore` 中对应行
- 若编译缺宏包，在 Dockerfile / workflow 中补装对应 texlive 包，或直接换 `ghcr.io/xu-cheng/texlive-full` 完整镜像
