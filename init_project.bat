@echo off
chcp 65001 > nul

echo ==================================================
echo 学术研究项目初始化脚本
echo ==================================================
echo 此脚本将创建标准的研究项目目录结构和配置文件。
echo.

REM 创建目录结构
echo 创建项目目录结构...
mkdir code >nul 2>nul
mkdir code\clean >nul 2>nul
mkdir code\analysis >nul 2>nul
mkdir code\utils >nul 2>nul
mkdir data >nul 2>nul
mkdir data\raw >nul 2>nul
mkdir data\processed >nul 2>nul
mkdir data\external >nul 2>nul
mkdir temp >nul 2>nul
mkdir results >nul 2>nul
mkdir results\figures >nul 2>nul
mkdir results\tables >nul 2>nul
mkdir docs >nul 2>nul
mkdir writing >nul 2>nul

echo  已创建目录结构
echo.

REM 创建.gitattributes文件
echo 创建.gitattributes文件...
break > .gitattributes
@echo # 配置不同文件类型的换行符规则 >> .gitattributes
@echo # 配置文件明确使用LF换行符 >> .gitattributes
@echo .gitignore text eol=lf >> .gitattributes
@echo .gitattributes text eol=lf >> .gitattributes
@echo .stignore text eol=lf >> .gitattributes
@echo # Windows批处理文件使用CRLF换行符 >> .gitattributes
@echo *.bat text eol=crlf >> .gitattributes
@echo # 其他文本文件使用LF换行符 >> .gitattributes
@echo *.py text eol=lf >> .gitattributes
@echo *.sh text eol=lf >> .gitattributes
@echo *.md text eol=lf >> .gitattributes
@echo *.txt text eol=lf >> .gitattributes
@echo *.csv text eol=lf >> .gitattributes
@echo *.json text eol=lf >> .gitattributes
@echo *.yml text eol=lf >> .gitattributes
@echo *.yaml text eol=lf >> .gitattributes
@echo *.ini text=lf >> .gitattributes
@echo *.conf text eol=lf >> .gitattributes
@echo *.config text eol=lf >> .gitattributes
@echo # 二进制文件标识 >> .gitattributes
@echo *.jpg binary >> .gitattributes
@echo *.jpeg binary >> .gitattributes
@echo *.png binary >> .gitattributes
@echo *.gif binary >> .gitattributes
@echo *.bmp binary >> .gitattributes
@echo *.tiff binary >> .gitattributes
@echo *.ico binary >> .gitattributes
@echo *.svg binary >> .gitattributes
@echo *.pdf binary >> .gitattributes
@echo *.zip binary >> .gitattributes
@echo *.rar binary >> .gitattributes
@echo *.7z binary >> .gitattributes
@echo *.tar.gz binary >> .gitattributes
@echo *.tar.bz2 binary >> .gitattributes
@echo *.tar.xz binary >> .gitattributes
@echo *.exe binary >> .gitattributes
@echo *.dll binary >> .gitattributes
@echo *.so binary >> .gitattributes
@echo *.dylib binary >> .gitattributes
@echo *.o binary >> .gitattributes
@echo *.obj binary >> .gitattributes
@echo *.a binary >> .gitattributes
@echo *.lib binary >> .gitattributes
@echo *.class binary >> .gitattributes
@echo *.jar binary >> .gitattributes
@echo *.war binary >> .gitattributes
@echo *.ear binary >> .gitattributes
@echo *.dat binary >> .gitattributes
@echo *.sqlite binary >> .gitattributes
@echo *.db binary >> .gitattributes
@echo *.mp3 binary >> .gitattributes
@echo *.wav binary >> .gitattributes
@echo *.ogg binary >> .gitattributes
@echo *.flac binary >> .gitattributes
@echo *.mp4 binary >> .gitattributes
@echo *.avi binary >> .gitattributes
@echo *.mov binary >> .gitattributes
@echo *.wmv binary >> .gitattributes
@echo *.mkv binary >> .gitattributes
echo  已创建.gitattributes文件

REM 创建.gitignore文件
echo 创建.gitignore文件...
break > .gitignore
@echo # OS生成的文件 >> .gitignore
@echo .DS_Store >> .gitignore
@echo Thumbs.db >> .gitignore
@echo Thumbs.db:encryptable >> .gitignore
@echo ehthumbs.db >> .gitignore
@echo ehthumbs_vista.db >> .gitignore
@echo *.stackdump >> .gitignore
@echo [Dd]esktop.ini >> .gitignore
@echo $RECYCLE.BIN/ >> .gitignore
@echo. >> .gitignore
@echo # IDE文件 >> .gitignore
@echo .idea/ >> .gitignore
@echo .vscode/ >> .gitignore
@echo *.suo >> .gitignore
@echo *.ntvs* >> .gitignore
@echo *.njsproj >> .gitignore
@echo *.sln >> .gitignore
@echo *.sw? >> .gitignore
@echo *.swo >> .gitignore
@echo *.swp >> .gitignore
@echo __pycache__/ >> .gitignore
@echo. >> .gitignore
@echo # 环境文件 >> .gitignore
@echo *.env >> .gitignore
@echo *.env.* >> .gitignore
@echo !.env.example >> .gitignore
@echo venv/ >> .gitignore
@echo env/ >> .gitignore
@echo ENV/ >> .gitignore
@echo env.bak/ >> .gitignore
@echo venv.bak/ >> .gitignore
@echo. >> .gitignore
@echo # 不同步的目录 >> .gitignore
@echo data/ >> .gitignore
@echo results/ >> .gitignore
@echo temp/ >> .gitignore
@echo writing/ >> .gitignore
@echo. >> .gitignore
@echo # 日志文件 >> .gitignore
@echo *.log >> .gitignore
@echo logs/ >> .gitignore
echo  已创建.gitignore文件

REM 创建.stignore文件
echo 创建.stignore文件...
break > .stignore
@echo # Git相关 >> .stignore
@echo .git/ >> .stignore
@echo .gitignore >> .stignore
@echo .gitattributes >> .stignore
@echo. >> .stignore
@echo # 不同步的目录 >> .stignore
@echo temp/ >> .stignore
@echo code/ >> .stignore
@echo. >> .stignore
@echo # OS generated files >> .stignore
@echo .DS_Store >> .stignore
@echo .DS_Store? >> .stignore
@echo ._* >> .stignore
@echo .Spotlight-V100 >> .stignore
@echo .Trashes >> .stignore
@echo ehthumbs.db >> .stignore
@echo Thumbs.db >> .stignore
@echo. >> .stignore
@echo # IDE files >> .stignore
@echo .idea/ >> .stignore
@echo .vscode/ >> .stignore
@echo *.swp >> .stignore
@echo *.swo >> .stignore
@echo *~ >> .stignore
@echo. >> .stignore
@echo # Python files >> .stignore
@echo __pycache__/ >> .stignore
@echo *.py[cod] >> .stignore
@echo *$py.class >> .stignore
@echo *.so >> .stignore
@echo .Python >> .stignore
@echo. >> .stignore
@echo # Environment files >> .stignore
@echo .env >> .stignore
@echo .env.local >> .stignore
@echo .env.development.local >> .stignore
@echo .env.test.local >> .stignore
@echo .env.production.local >> .stignore
@echo. >> .stignore
@echo # Log files >> .stignore
@echo *.log >> .stignore
@echo logs/ >> .stignore
@echo. >> .stignore
@echo # MS-Office/WPS临时文件 >> .stignore
@echo ~$* >> .stignore
@echo *.tmp >> .stignore
@echo *.temp >> .stignore
@echo ~*.doc >> .stignore
@echo ~*.docx >> .stignore
@echo ~*.xls >> .stignore
@echo ~*.xlsx >> .stignore
@echo ~*.ppt >> .stignore
@echo ~*.pptx >> .stignore
@echo ~*.wps >> .stignore
@echo ~*.et >> .stignore
@echo ~*.dps >> .stignore
@echo. >> .stignore
@echo # 虚拟环境 >> .stignore
@echo venv/ >> .stignore
@echo env/ >> .stignore
@echo ENV/ >> .stignore
echo  已创建.stignore文件

REM 创建README.md文件
echo 创建README.md文件...
break > README.md
@echo # 学术研究项目 >> README.md
@echo. >> README.md
@echo ## 项目介绍 >> README.md
@echo. >> README.md
@echo 本项目用于学术研究工作，包含代码、数据和文档等内容。 >> README.md
@echo. >> README.md
@echo ## 目录结构 >> README.md
@echo. >> README.md
@echo ``` >> README.md
@echo ├── code/              # 代码目录 >> README.md
@echo │   ├── clean/         # 数据清洗代码 >> README.md
@echo │   ├── analysis/      # 数据分析代码 >> README.md
@echo │   └── utils/         # 工具函数 >> README.md
@echo ├── data/              # 数据目录 >> README.md
@echo │   ├── raw/           # 原始数据 >> README.md
@echo │   ├── processed/     # 处理后的数据 >> README.md
@echo │   └── external/      # 外部数据 >> README.md
@echo ├── temp/              # 临时文件 >> README.md
@echo ├── results/           # 结果目录 >> README.md
@echo │   ├── figures/       # 图表结果 >> README.md
@echo │   └── tables/        # 表格结果 >> README.md
@echo ├── docs/              # 文档目录 >> README.md
@echo └── writing/           # 写作相关文件 >> README.md
@echo ``` >> README.md
@echo. >> README.md
@echo ## Git同步规则 >> README.md
@echo. >> README.md
@echo - **同步的内容**：code目录 >> README.md
@echo - **不同步的内容**：data、results、temp、writing目录 >> README.md
@echo. >> README.md
@echo ## Syncthing同步规则 >> README.md
@echo. >> README.md
@echo - **不同步的内容**：.git目录、.gitignore、.gitattributes、temp、code目录 >> README.md
@echo - **同步的内容**：其他所有内容 >> README.md
@echo. >> README.md
@echo ## 使用说明 >> README.md
@echo. >> README.md
@echo 1. 将原始数据放在`data/raw`目录下 >> README.md
@echo 2. 在`code`目录中编写数据处理和分析代码 >> README.md
@echo 3. 处理后的数据保存在`data/processed`目录 >> README.md
@echo 4. 分析结果保存在`results`目录 >> README.md
@echo 5. 文档放在`docs`目录 >> README.md
@echo 6. 写作相关文件放在`writing`目录 >> README.md
echo  已创建README.md文件

REM 创建代码占位文件
echo 创建代码占位文件...
break > code\__init__.py
@echo # 初始化文件 >> code\__init__.py
break > code\clean\__init__.py
@echo # 初始化文件 >> code\clean\__init__.py
break > code\analysis\__init__.py
@echo # 初始化文件 >> code\analysis\__init__.py
break > code\utils\__init__.py
@echo # 初始化文件 >> code\utils\__init__.py

echo  已创建初始化文件

echo.
echo ==================================================
echo 项目初始化完成！
echo ==================================================
echo 已创建以下内容：
echo 1. 标准的项目目录结构
echo 2. .gitattributes、.gitignore和.stignore配置文件
echo 3. README.md项目说明文档
echo 4. 代码占位文件
echo.
echo 现在您可以开始您的研究工作了！
echo.
pause