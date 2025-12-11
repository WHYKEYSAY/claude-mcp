# Claude Code 配额优化模式 (v1.3)

智能管理 Claude、Gemini 和 Codex 三个 AI 工具的配额使用，提升开发效率。

## 📋 核心原则

```
🔥 烧 Gemini 的免费配额 (1,500/天)
   ↓
🛡️ 保护 Claude 的上下文 (200k)
   ↓
⏱️ 合理使用 Codex 的配额 (5小时制)
```

## 🚀 快速开始

### Windows 用户
```bash
cd windows
claude-optimized.bat
```

### Linux/Mac 用户
```bash
cd linux
bash setup-linux.sh    # 一键安装
source ~/.bashrc        # 重新加载配置
claude-opt              # 启动！
```

## 📁 项目结构

```
claude-mcp/
├── README.md                           (本文件 - 项目总览)
├── INDEX.md                            (完整文档索引)
├── QUOTA-OPTIMIZED-QUICK-REFERENCE.txt (快速参考卡片)
├── ACTIVATION-GUIDE.md                 (激活使用指南)
├── SETUP-COMPLETE-CHECKLIST.md         (设置完成清单)
├── MIGRATION-COMPLETE.md               (迁移说明)
├── verify-setup.py                     (配置验证脚本)
│
├── windows/                            Windows 环境配置
│   ├── claude-optimized.bat            启动脚本
│   └── (其他 Windows 相关文件)
│
├── linux/                              Linux 环境配置
│   ├── setup-linux.sh                  一键安装脚本
│   ├── claude-optimized.sh             启动脚本
│   ├── system-prompt.md                系统提示
│   ├── QUICK-REFERENCE.txt             快速参考
│   └── README-LINUX.md                 Linux 详细说明
│
└── docs/                               额外文档
    └── (集成指南等)
```

## 👥 三模型协作

| 角色 | 用途 | 配额 | 命令 |
|------|------|------|------|
| **🏗️ Claude** | 文件操作、代码编写 | 200k tokens | 直接描述 |
| **🔍 Gemini** | 查文档、错误分析 | 1,500/天 (免费) | `@gemini search for...` |
| **🔬 Codex** | 逻辑审查、安全检查 | 300-1500/5h | `@codex review for...` |

## 💬 使用示例

### 查资料 (优先使用 Gemini)
```
@gemini search for React 18 breaking changes
@gemini find Python async/await best practices
@gemini analyze this error: [error message]
```

### 写代码 (使用 Claude)
```
Create a FastAPI application with authentication
Write a function that processes CSV files
Refactor this module to use async/await
```

### 审查代码 (使用 Codex)
```
@codex review this code for race conditions
@codex check for security vulnerabilities
@codex find edge cases in this function
```

### 完整工作流 (3-Step Trifecta)
```
Step A: @gemini find Rust async best practices
Step B: Create an async Rust web server
Step C: @codex review for race conditions
```

## 📊 配额概览

```
Gemini:  ~1,500 requests/day
         ████████████████████████ FREE ✅
         策略: 积极使用，大量烧掉

Claude:  200,000 tokens (context window)
         ████████████████████││││ EXPENSIVE 💰
         策略: 保护，仅文件操作

Codex:   300-1500 messages / 5 hours
         ██████││││││ LIMITED ⏱️
         策略: 保留给关键任务
```

## 🎯 适用场景

### ✅ 你应该使用这个系统，如果...
- 需要频繁查询文档和最佳实践
- 想要优化 Claude Code Pro 的使用成本
- 经常需要代码审查和安全检查
- 希望有结构化的 AI 协作工作流

### ❌ 你可能不需要，如果...
- 只做简单的一次性任务
- 不使用 MCP 服务器
- 不关心配额优化

## 📖 详细文档

### 快速入门 (5分钟)
- **README.md** (本文件) - 项目概览
- **QUOTA-OPTIMIZED-QUICK-REFERENCE.txt** - 命令速查

### 详细学习 (20分钟)
- **ACTIVATION-GUIDE.md** - 如何激活和使用
- **linux/README-LINUX.md** - Linux 环境详细说明
- **SETUP-COMPLETE-CHECKLIST.md** - 设置验证清单

### 完整指南
- **INDEX.md** - 完整文档导航
- **docs/** - 深入的集成指南

## 🛠️ 安装要求

### 必需
- Claude Code (`npm install -g @anthropic/claude-code`)
- MCP 服务器配置

### 推荐
- [Gemini MCP Server](https://github.com/missdeer/gemini-mcp-rs)
- [Codex MCP Server](https://github.com/missdeer/codex-mcp-rs)

### 验证安装
```bash
# 检查 Claude Code
claude --version

# 检查 MCP 服务器
claude mcp list
```

应该看到：
```
gemini: /path/to/gemini-mcp-rs - ✓ Connected
codex: /path/to/codex-mcp-rs - ✓ Connected
```

## 🚀 开始使用

### Windows
1. 进入 `windows/` 目录
2. 双击 `claude-optimized.bat`
3. 看到欢迎界面，开始工作！

### Linux
1. 进入 `linux/` 目录
2. 运行 `bash setup-linux.sh`
3. 运行 `source ~/.bashrc`
4. 运行 `claude-opt`

## ✨ 核心特性

✅ **一键启动** - 漂亮的欢迎界面和 MCP 状态检查
✅ **自动路由** - 智能识别任务类型，分配合适工具
✅ **配额管理** - 优先使用免费的 Gemini 配额
✅ **上下文保护** - 避免浪费 Claude 的昂贵上下文
✅ **3-Step Trifecta** - 研究→实现→验证的完整工作流
✅ **跨平台** - Windows 和 Linux 都支持

## 🎓 学习路径

### 第一次使用 (10分钟)
1. 阅读本 README
2. 运行启动脚本
3. 尝试一个简单的 `@gemini` 查询

### 深入学习 (30分钟)
1. 阅读 QUICK-REFERENCE.txt
2. 阅读 ACTIVATION-GUIDE.md
3. 尝试 3-Step Trifecta 工作流

### 完全掌握 (1小时+)
1. 阅读所有文档
2. 理解配额管理策略
3. 定制自己的工作流

## 📞 需要帮助？

1. **快速查询** → QUICK-REFERENCE.txt
2. **激活说明** → ACTIVATION-GUIDE.md
3. **设置验证** → SETUP-COMPLETE-CHECKLIST.md
4. **完整文档** → INDEX.md

## 🔄 工作流示例

**任务**: 实现一个 Rust 异步 Web 服务器，带速率限制

```
Step A - 研究 (用 Gemini, 免费)
  @gemini search for Rust tokio rate limiting best practices
  成本: 1 req ✅

Step B - 实现 (用 Claude, 保护上下文)
  创建 main.rs, server.rs, Cargo.toml
  成本: ~500 tokens

Step C - 审查 (用 Codex, 保留配额)
  @codex review for race conditions and memory leaks
  成本: 1 msg

总成本: 高效！🚀
```

## 📝 版本信息

- **版本**: v1.3 - QUOTA-OPTIMIZED RELEASE
- **创建日期**: 2025-12-10
- **状态**: 🟢 完全就绪
- **支持平台**: Windows, Linux, macOS

## 🤝 贡献

这是个人工作流配置，欢迎：
- 提交 Issue 报告问题
- 分享你的使用经验
- 提出改进建议

## 📜 许可证

可自由使用和修改。

## 🔗 相关链接

- [Gemini MCP Server](https://github.com/missdeer/gemini-mcp-rs)
- [Codex MCP Server](https://github.com/missdeer/codex-mcp-rs)
- [MCP 规范](https://github.com/anthropics/model-context-protocol)
- [Claude Code 文档](https://code.claude.com)

---

**准备好优化你的开发工作流了吗？**

### Windows
```bash
cd windows
claude-optimized.bat
```

### Linux
```bash
cd linux
bash setup-linux.sh
claude-opt
```

🚀 **开始提高生产力！**
