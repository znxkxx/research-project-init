#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os
import sys
from pathlib import Path

def print_welcome_message():
    """打印欢迎信息"""
    welcome_lines = [
        "-" * 50,
        "学术研究项目初始化脚本",
        "-" * 50,
        "此脚本将创建标准的研究项目目录结构和配置文件。",
        "支持跨平台使用（Windows、Linux、macOS）。"
    ]
    for line in welcome_lines:
        print(line)
    print()

def create_directories():
    """创建项目目录结构"""
    print("创建项目目录结构...")
    
    # 定义目录结构
    directories = [
        "code",
        "code/clean",
        "code/analysis",
        "code/utils",
        "data",
        "data/raw",
        "data/processed",
        "data/external",
        "temp",
        "results",
        "results/figures",
        "results/tables",
        "writing",
        "writing/manuscripts",
        "writing/presentations",
        "writing/submissions",
    ]
    
    # 创建目录
    for directory in directories:
        try:
            os.makedirs(directory, exist_ok=True)
            print(f"  已创建目录: {directory}")
        except Exception as e:
            print(f"  创建目录失败: {directory} - {str(e)}")
    print()

def create_gitattributes():
    """创建.gitattributes文件"""
    print("创建.gitattributes文件...")
    
    gitattributes_lines = [
        "# 配置不同文件类型的换行符规则",
        "# 配置文件明确使用LF换行符",
        ".gitignore text eol=lf",
        ".gitattributes text eol=lf",
        ".stignore text eol=lf",
        "# Windows批处理文件使用CRLF换行符",
        "*.bat text eol=crlf",
        "# 其他文本文件使用LF换行符",
        "*.do text eol=lf",
        "*.py text eol=lf",
        "*.sh text eol=lf",
        "*.md text eol=lf",
        "*.txt text eol=lf",
        "*.csv text eol=lf",
        "*.json text eol=lf",
        "*.yml text eol=lf",
        "*.yaml text eol=lf",
        "*.ini text=lf",
        "*.conf text eol=lf",
        "*.config text eol=lf",
        "# 二进制文件标识",
        "*.jpg binary",
        "*.jpeg binary",
        "*.png binary",
        "*.gif binary",
        "*.bmp binary",
        "*.tiff binary",
        "*.ico binary",
        "*.svg binary",
        "*.pdf binary",
        "*.zip binary",
        "*.rar binary",
        "*.7z binary",
        "*.tar.gz binary",
        "*.tar.bz2 binary",
        "*.tar.xz binary",
        "*.exe binary",
        "*.dll binary",
        "*.so binary",
        "*.dylib binary",
        "*.o binary",
        "*.obj binary",
        "*.a binary",
        "*.lib binary",
        "*.class binary",
        "*.jar binary",
        "*.war binary",
        "*.ear binary",
        "*.dat binary",
        "*.sqlite binary",
        "*.db binary",
        "*.mp3 binary",
        "*.wav binary",
        "*.ogg binary",
        "*.flac binary",
        "*.mp4 binary",
        "*.avi binary",
        "*.mov binary",
        "*.wmv binary",
        "*.mkv binary"
    ]
    
    try:
        with open(".gitattributes", "w", encoding="utf-8", newline="") as f:
            f.write("\n".join(gitattributes_lines))
        print("  .gitattributes文件已创建")
    except Exception as e:
        print(f"  创建.gitattributes文件失败: {str(e)}")

def create_gitignore():
    """创建.gitignore文件"""
    print("创建.gitignore文件...")
    
    gitignore_lines = [
        "# OS生成的文件",
        ".DS_Store",
        "Thumbs.db",
        "Thumbs.db:encryptable",
        "ehthumbs.db",
        "ehthumbs_vista.db",
        "*.stackdump",
        "[Dd]esktop.ini",
        "$RECYCLE.BIN/",
        
        "# IDE文件",
        ".idea/",
        ".vscode/",
        "*.suo",
        "*.ntvs*",
        "*.njsproj",
        "*.sln",
        "*.sw?",
        "*.swo",
        "*.swp",
        "__pycache__/",
        
        "# 环境文件",
        "*.env",
        "*.env.*",
        "!.env.example",
        "venv/",
        "env/",
        "ENV/",
        "env.bak/",
        "venv.bak/",
        
        "# 不同步的目录",
        "data/",
        "results/",
        "temp/",
        "writing/",
        
        "# 日志文件",
        "*.log",
        "logs/",

        "# syncthing相关",
        ".stfolder/",
        ".stignore",
    ]
    
    try:
        with open(".gitignore", "w", encoding="utf-8", newline="") as f:
            f.write("\n".join(gitignore_lines))
        print("  .gitignore文件已创建")
    except Exception as e:
        print(f"  创建.gitignore文件失败: {str(e)}")

def create_stignore():
    """创建.stignore文件"""
    print("创建.stignore文件...")
    
    stignore_lines = [
        "# Git相关",
        ".git",
        ".gitignore",
        ".gitattributes",
        "README*.md"

        "# 不同步的目录",
        "temp",
        "code",
        
        "# OS generated files",
        ".DS_Store",
        ".DS_Store?",
        "._*",
        ".Spotlight-V100",
        ".Trashes",
        "ehthumbs.db",
        "Thumbs.db",
        "",
        "# IDE files and folders",
        ".idea",
        ".vscode",
        "*.swp",
        "*.swo",
        "*~",
        "",
        "# Python files",
        "__pycache__",
        "*.py[cod]",
        "*$py.class",
        "*.so",
        ".Python",
        "",
        "# Environment files and folders",
        ".env",
        ".env.local",
        ".env.development.local",
        ".env.test.local",
        ".env.production.local",
        "",
        "# Log files",
        "*.log",
        "logs",
        "",
        "# MS-Office/WPS临时文件",
        "~$*",
        "*.tmp",
        "*.temp",
        "~*.doc",
        "~*.docx",
        "~*.xls",
        "~*.xlsx",
        "~*.ppt",
        "~*.pptx",
        "~*.wps",
        "~*.et",
        "~*.dps",
        "",
        "# 虚拟环境",
        "venv",
        "env",
        "ENV"
    ]
    
    try:
        with open(".stignore", "w", encoding="utf-8", newline="") as f:
            f.write("\n".join(stignore_lines))
        print("  .stignore文件已创建")
    except Exception as e:
        print(f"  创建.stignore文件失败: {str(e)}")

def create_readme():
    """创建README.md文件"""
    print("创建README.md文件...")
    
    readme_lines = [
        "# 学术研究项目",
        "\n## 项目介绍",
        "\n本项目用于学术研究工作，包含代码、数据和文档等内容。",
        "\n## 目录结构",
        "\n```",
        "├── code/              # 代码目录",
        "│   ├── clean/         # 数据清洗代码",
        "│   ├── analysis/      # 数据分析代码",
        "│   └── utils/         # 工具函数",
        "├── data/              # 数据目录",
        "│   ├── raw/           # 原始数据",
        "│   ├── processed/     # 处理后的数据",
        "│   └── external/      # 外部数据",
        "├── temp/              # 临时文件",
        "├── results/           # 结果目录",
        "│   ├── figures/       # 图表结果",
        "│   └── tables/        # 表格结果",
        "├── docs/              # 文档目录",
        "└── writing/           # 写作相关文件",
        "    ├── manuscripts/   # 论文手稿",
        "    ├── presentations/ # 演示文稿",
        "    └── submission/    # 投稿相关内容",
        "```",
        "\n## Git同步规则",
        "\n- **同步的内容**：code目录",
        "- **不同步的内容**：data、results、temp、writing目录",
        "\n## Syncthing同步规则",
        "\n- **不同步的内容**：.git目录、.gitignore、.gitattributes、temp、code目录",
        "- **同步的内容**：其他所有内容",
        "\n## 使用说明",
        "\n1. 将原始数据放在`data/raw`目录下",
        "2. 在`code`目录中编写数据处理和分析代码",
        "3. 处理后的数据保存在`data/processed`目录",
        "4. 分析结果保存在`results`目录",
        "5. 写作相关文件放在`writing`目录"
    ]
    
    try:
        with open("README.md", "w", encoding="utf-8", newline="") as f:
            f.write("\n".join(readme_lines))
        print("  README.md文件已创建")
    except Exception as e:
        print(f"  创建README.md文件失败: {str(e)}")

# def create_code_placeholder_files():
#     """创建代码占位文件"""
#     print("创建代码占位文件...")
    
    # # 创建__init__.py文件
    # init_files = [
    #     "code/__init__.py",
    #     "code/clean/__init__.py",
    #     "code/analysis/__init__.py",
    #     "code/utils/__init__.py"
    # ]
    
    # for init_file in init_files:
    #     try:
    #         with open(init_file, "w", encoding="utf-8", newline="") as f:
    #             f.write("# 初始化文件")
    #         print(f"  已创建: {init_file}")
    #     except Exception as e:
    #         print(f"  创建{init_file}失败: {str(e)}")
    
    # # 创建数据清洗示例文件
    # clean_script_lines = [
    #     "# -*- coding: utf-8 -*-",
    #     "\"\"\"数据清洗模块\"\"\"",
    #     "",
    #     "import pandas as pd",
    #     "import numpy as np",
    #     "",
    #     "def load_data(file_path):",
    #     "    \"\"\"加载原始数据\"\"\"",
    #     "    # 在这里实现数据加载逻辑",
    #     "    pass",
    #     "",
    #     "def clean_data(df):",
    #     "    \"\"\"清洗数据\"\"\"",
    #     "    # 在这里实现数据清洗逻辑",
    #     "    pass",
    #     "",
    #     "def save_processed_data(df, output_path):",
    #     "    \"\"\"保存处理后的数据\"\"\"",
    #     "    # 在这里实现数据保存逻辑",
    #     "    pass"
    # ]
    
    # try:
    #     with open("code/clean/data_cleaner.py", "w", encoding="utf-8", newline="") as f:
    #         f.write("\n".join(clean_script_lines))
    #     print("  已创建: code/clean/data_cleaner.py")
    # except Exception as e:
    #     print(f"  创建code/clean/data_cleaner.py失败: {str(e)}")
    
    # # 创建数据分析示例文件
    # analysis_script_lines = [
    #     "# -*- coding: utf-8 -*-",
    #     "\"\"\"数据分析模块\"\"\"",
    #     "",
    #     "import pandas as pd",
    #     "import numpy as np",
    #     "import matplotlib.pyplot as plt",
    #     "",
    #     "def load_processed_data(file_path):",
    #     "    \"\"\"加载处理后的数据\"\"\"",
    #     "    # 在这里实现数据加载逻辑",
    #     "    pass",
    #     "",
    #     "def perform_analysis(df):",
    #     "    \"\"\"执行数据分析\"\"\"",
    #     "    # 在这里实现数据分析逻辑",
    #     "    pass",
    #     "",
    #     "def save_results(results, output_path):",
    #     "    \"\"\"保存分析结果\"\"\"",
    #     "    # 在这里实现结果保存逻辑",
    #     "    pass"
    # ]
    
    # try:
    #     with open("code/analysis/data_analyzer.py", "w", encoding="utf-8", newline="") as f:
    #         f.write("\n".join(analysis_script_lines))
    #     print("  已创建: code/analysis/data_analyzer.py")
    # except Exception as e:
    #     print(f"  创建code/analysis/data_analyzer.py失败: {str(e)}")
    
    # # 创建工具函数示例文件
    # utils_script_lines = [
    #     "# -*- coding: utf-8 -*-",
    #     "\"\"\"工具函数模块\"\"\"",
    #     "",
    #     "import os",
    #     "from datetime import datetime",
    #     "",
    #     "def ensure_directory(path):",
    #     "    \"\"\"确保目录存在\"\"\"",
    #     "    os.makedirs(path, exist_ok=True)",
    #     "",
    #     "def timestamp():",
    #     "    \"\"\"生成时间戳\"\"\"",
    #     "    return datetime.now().strftime('%Y%m%d_%H%M%S')"
    # ]
    
    # try:
    #     with open("code/utils/helpers.py", "w", encoding="utf-8", newline="") as f:
    #         f.write("\n".join(utils_script_lines))
    #     print("  已创建: code/utils/helpers.py")
    # except Exception as e:
    #     print(f"  创建code/utils/helpers.py失败: {str(e)}")
    
    # print()

# def create_dot_keep_files():
#     """创建.gitkeep文件，确保空目录被Git跟踪"""
#     print("创建.gitkeep文件...")
    
#     gitkeep_dirs = [
#         "code/clean",
#         "code/analysis",
#         "code/utils"
#     ]
    
#     for dir_path in gitkeep_dirs:
#         try:
#             with open(os.path.join(dir_path, ".gitkeep"), "w", encoding="utf-8", newline="") as f:
#                 f.write("# 此文件确保空目录被Git跟踪")
#             print(f"  已创建: {os.path.join(dir_path, '.gitkeep')}")
#         except Exception as e:
#             print(f"  创建{os.path.join(dir_path, '.gitkeep')}失败: {str(e)}")
#     print()

def print_completion_message():
    """打印完成信息"""
    completion_lines = [
        "-" * 50,
        "项目初始化完成！",
        "-" * 50,
        "已创建以下内容：",
        "1. 标准的项目目录结构",
        "2. .gitattributes、.gitignore和.stignore配置文件",
        "3. README.md项目说明文档",
        "",
        "现在您可以开始您的研究工作了！"
    ]
    
    for line in completion_lines:
        print(line)

def main():
    """主函数"""
    # 打印欢迎信息
    print_welcome_message()
    
    # 创建目录结构
    create_directories()
    
    # 创建配置文件
    create_gitattributes()
    create_gitignore()
    create_stignore()
    create_readme()
    
    # 创建代码占位文件
    # create_code_placeholder_files()
    
    # 创建.gitkeep文件
    # create_dot_keep_files()
    
    # 打印完成信息
    print_completion_message()

if __name__ == "__main__":
    main()