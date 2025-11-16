# 研究项目初始化工具

## 项目介绍

本仓库提供了一套完整的学术研究项目初始化工具，帮助研究人员快速搭建标准化的项目目录结构，支持Python和Stata代码处理数据，并通过Git和Syncthing实现跨平台（Ubuntu和Windows）协作。

## 功能特点

- 自动生成标准化的研究项目目录结构
- 提供三种初始化脚本，支持多种操作系统
- 自动配置Git和Syncthing的同步规则
- 优化跨平台协作体验

## 包含的脚本

- `init_project.py` - Python版本的初始化脚本（跨平台）
- `init_project.bat` - Windows批处理脚本（使用CRLF换行符）
- `init_project.sh` - Linux/macOS Shell脚本（使用LF换行符）

## 目录结构说明

初始化后的项目将包含以下目录结构：

```
项目名称/
├── code/                    # 代码目录（Git管理）
│   ├── clean/               # 数据清洗代码
│   ├── analysis/            # 数据分析代码
│   └── utils/               # 公共脚本或函数
├── data/                    # 数据目录（Syncthing同步）
│   ├── raw/                 # 原始数据
│   └── processed/           # 处理后的数据
├── temp/                    # 临时文件目录（不同步）
├── result/                  # 结果目录（Syncthing同步）
│   ├── tables/              # 表格结果
│   ├── figures/             # 图表结果
│   └── reports/             # 结果报告
├── writing/                 # 写作目录（Syncthing同步）
│   ├── manuscripts/         # 论文手稿
│   ├── slides/              # 演示文稿
│   └── submission/          # 投稿相关内容
├── README.md                # 项目整体说明
├── .gitignore               # 忽略规则
├── .gitattributes           # Git属性设置
└── .stignore                # Syncthing忽略规则
```

## 使用方法

### Python脚本（推荐）

在项目根目录执行以下命令：

```bash
python init_project.py
```

### Windows批处理脚本

在Windows系统中，双击运行：

```shell
init_project.bat
```


### Linux/macOS Shell脚本

在Linux或macOS系统中，执行以下命令：

```bash
chmod +x init_project.sh
./init_project.sh
```

## 后续配置步骤

1. **初始化Git仓库**
   在项目根目录执行：
   ```bash
   git init
   ```

2. **配置Syncthing**
   - 添加项目目录到Syncthing
   - 确保`.stignore`文件正确配置了忽略规则

## 同步策略说明

### Git同步范围
- 仅管理代码目录（`code/`）
- 通过`.gitignore`忽略数据、结果、临时文件等

### Syncthing同步范围
- 同步数据（`data/`）、结果（`result/`）和写作（`writing/`）目录
- 忽略临时目录（`temp/`）和Git相关文件

### 不同步的内容
- `temp/`目录下的所有文件
- Git版本控制相关文件（`.git/`, `.gitignore`, `.gitattributes`）
- 项目初始化脚本（已通过Git管理）

## 跨平台协作注意事项

- 使用相对路径引用文件，避免硬编码绝对路径
- 注意文件编码格式，推荐使用UTF-8
- 文本文件换行符已通过`.gitattributes`统一配置：
  - `.bat`文件使用CRLF换行符
  - 其他文本文件使用LF换行符
- 二进制文件（如Stata数据文件）已在`.gitattributes`中正确标识
- 大型数据文件不建议放入Git仓库，应通过Syncthing同步

## 常见问题

1. **初始化脚本执行失败**
   - 检查Python环境是否正确安装
   - 确保有目录创建权限

2. **跨平台文件兼容性问题**
   - 确保`.gitattributes`文件被正确应用
   - 在Git配置中启用自动换行符转换

3. **Syncthing同步问题**
   - 检查`.stignore`文件配置是否正确
   - 确认Syncthing已正确识别项目目录

## 许可证

本工具采用MIT许可证。

## 贡献

欢迎提交问题和改进建议！