#!/bin/bash

echo "==================================================="
echo "学术研究项目初始化脚本"
echo "==================================================="
echo "此脚本将创建标准的研究项目目录结构和配置文件。"
echo ""

# 创建目录结构
echo "创建项目目录结构..."
mkdir -p code/clean code/analysis code/utils
echo "  已创建code目录结构"

mkdir -p data/raw data/processed data/external
echo "  已创建data目录结构"

mkdir -p temp
echo "  已创建temp目录"

mkdir -p results/figures results/tables
echo "  已创建results目录结构"

mkdir -p writing/manuscripts writing/presentations writing/submissions
echo "  已创建writing目录"
echo ""

# 创建.gitattributes文件
echo "创建.gitattributes文件..."
cat > .gitattributes << 'EOF'
# 配置不同文件类型的换行符规则
# 配置文件明确使用LF换行符
.gitignore text eol=lf
.gitattributes text eol=lf
.stignore text eol=lf
# Windows批处理文件使用CRLF换行符
*.bat text eol=crlf
# 其他文本文件使用LF换行符
*.py text eol=lf
*.sh text eol=lf
*.md text eol=lf
*.txt text eol=lf
*.csv text eol=lf
*.json text eol=lf
*.yml text eol=lf
*.yaml text eol=lf
*.ini text=lf
*.conf text eol=lf
*.config text eol=lf
# 二进制文件标识
*.jpg binary
*.jpeg binary
*.png binary
*.gif binary
*.bmp binary
*.tiff binary
*.ico binary
*.svg binary
*.pdf binary
*.zip binary
*.rar binary
*.7z binary
*.tar.gz binary
*.tar.bz2 binary
*.tar.xz binary
*.exe binary
*.dll binary
*.so binary
*.dylib binary
*.o binary
*.obj binary
*.a binary
*.lib binary
*.class binary
*.jar binary
*.war binary
*.ear binary
*.dat binary
*.sqlite binary
*.db binary
*.mp3 binary
*.wav binary
*.ogg binary
*.flac binary
*.mp4 binary
*.avi binary
*.mov binary
*.wmv binary
*.mkv binary
EOF

echo "  已创建.gitattributes文件"

# 创建.gitignore文件
echo "创建.gitignore文件..."
cat > .gitignore << 'EOF'
# OS生成的文件
.DS_Store
Thumbs.db
Thumbs.db:encryptable
ehthumbs.db
ehthumbs_vista.db
*.stackdump
[Dd]esktop.ini
$RECYCLE.BIN/

# IDE文件
.idea/
.vscode/
*.suo
*.ntvs*
*.njsproj
*.sln
*.sw?
*.swo
*.swp
__pycache__/

# 环境文件
*.env
*.env.*
!.env.example
venv/
env/
ENV/
env.bak/
venv.bak/

# 不同步的目录
data/
results/
temp/
writing/

# 日志文件
*.log
logs/

# syncthing相关
.stfolder/
.stignore
EOF

echo "  已创建.gitignore文件"

# 创建.stignore文件
echo "创建.stignore文件..."
cat > .stignore << 'EOF'
# Git相关
.git
.gitignore
.gitattributes
README*.md

# 不同步的目录
temp
code

# OS generated files
.DS_Store
.DS_Store?
._*
.Spotlight-V100
.Trashes
ehthumbs.db
Thumbs.db

# IDE files
.idea
.vscode
*.swp
*.swo
*~

# Python files
__pycache__
*.py[cod]
*$py.class
*.so
.Python

# Environment files
.env
.env.local
.env.development.local
.env.test.local
.env.production.local

# Log files
*.log
logs/

# MS-Office/WPS临时文件
~$*
*.tmp
*.temp
~*.doc
~*.docx
~*.xls
~*.xlsx
~*.ppt
~*.pptx
~*.wps
~*.et
~*.dps

# 虚拟环境
venv
env
ENV
EOF

echo "  已创建.stignore文件"

# 创建README.md文件
echo "创建README.md文件..."
cat > README.md << 'EOF'
# 学术研究项目

## 项目介绍

本项目用于学术研究工作，包含代码、数据和文档等内容。

## 目录结构

``` plaintext
├── code/              # 代码目录
│   ├── clean/         # 数据清洗代码
│   ├── analysis/      # 数据分析代码
│   └── utils/         # 工具函数
├── data/              # 数据目录
│   ├── raw/           # 原始数据
│   ├── processed/     # 处理后的数据
│   └── external/      # 外部数据
├── temp/              # 临时文件
├── results/           # 结果目录
│   ├── figures/       # 图表结果
│   └── tables/        # 表格结果
├── docs/              # 文档目录
└── writing/           # 写作相关文件
    ├── manuscripts/   # 论文手稿
    ├── presentations/ # 演示文稿
    └── submission/    # 投稿相关内容
```

## Git同步规则

- **同步的内容**：code目录
- **不同步的内容**：data、results、temp、writing目录

## Syncthing同步规则

- **不同步的内容**：.git目录、.gitignore、.gitattributes、temp、code目录
- **同步的内容**：其他所有内容

## 使用说明

1. 将原始数据放在`data/raw`目录下
2. 在`code`目录中编写数据处理和分析代码
3. 处理后的数据保存在`data/processed`目录
4. 分析结果保存在`results`目录
5. 写作相关文件放在`writing`目录
EOF

echo "  已创建README.md文件"

# # 创建代码占位文件
# echo "创建代码占位文件..."
# touch code/__init__.py code/clean/__init__.py code/analysis/__init__.py code/utils/__init__.py
# echo "# 初始化文件" > code/__init__.py
# echo "# 初始化文件" > code/clean/__init__.py
# echo "# 初始化文件" > code/analysis/__init__.py
# echo "# 初始化文件" > code/utils/__init__.py

# echo "  已创建初始化文件"
# echo ""

echo "==================================================="
echo "项目初始化完成！"
echo "==================================================="
echo "已创建以下内容："
echo "1. 标准的项目目录结构"
echo "2. .gitattributes、.gitignore和.stignore配置文件"
echo "3. README.md项目说明文档"
#echo "4. 代码占位文件"
echo ""
echo "现在您可以开始您的研究工作了！"
echo ""