# 预装中文 LaTeX 编译环境的开发容器
FROM mcr.microsoft.com/devcontainers/base:ubuntu

# 安装 XeLaTeX 引擎 + 中文支持 + 常用宏包 + latexmk 自动化编译
# 说明：texlive-latex-extra 较大但覆盖绝大多数常用宏包，构建一次后会缓存
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    texlive-xetex \
    texlive-latex-recommended \
    texlive-latex-extra \
    texlive-fonts-recommended \
    texlive-lang-chinese \
    fonts-fandol \
    latexmk \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
