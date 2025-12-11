# Claude Code 配额优化模式 - Linux 版本 (v1.3)

Linux 环境下的 Claude Code 配额优化系统，智能管理 Gemini、Claude 和 Codex 三个工具的使用。

## 🚀 一键安装

```bash
cd /path/to/claude-mcp/linux
bash setup-linux.sh
```

安装完成后，重新加载 shell：
```bash
source ~/.bashrc  # 或 ~/.zshrc
```

## 📋 核心原则

```
🔥 烧 Gemini 的免费配额 (1,500/天)
   ↓
🛡️ 保护 Claude 的上下文 (200k)
   ↓
⏱️ 合理使用 Codex 的配额 (5小时制)
```

## 🎯 快速启动

安装后有 3 种方式启动：

### 方式 1: 使用别名 (推荐) ⭐
```bash
claude-opt
```

或更短的：
```bash
cq
```

### 方式 2: 完整路径
```bash
~/.local/bin/claude-optimized.sh
```

### 方式 3: 如果 ~/.local/bin 在 PATH 中
```bash
claude-optimized.sh
```

## 👥 三模型协作

| 角色 | 用途 | 配额 | 命令 |
|------|------|------|------|
| **🏗️ Claude** | 文件操作、代码编写 | 200k tokens | 直接描述 |
| **🔍 Gemini** | 查文档、错误分析 | 1,500/天 (免费) | `@gemini search for...` |
| **🔬 Codex** | 逻辑审查、安全检查 | 300-1500/5h | `@codex review for...` |

## 💬 快速命令示例

### 查资料 (烧 Gemini)
```bash
@gemini search for React 18 breaking changes
@gemini find Python async best practices
@gemini analyze this error: [error message]
```

### 写代码 (用 Claude)
```bash
Create a FastAPI app with authentication
Write a function that processes CSV files
Refactor this module to use async/await
```

### 审查代码 (用 Codex)
```bash
@codex review this code for race conditions
@codex check for security vulnerabilities
@codex find edge cases in this function
```

### 完整工作流 (3-Step Trifecta)
```bash
# Step A: 研究
@gemini find Rust async web server best practices

# Step B: 实现 (等 Gemini 返回后)
Create an async Rust web server with rate limiting

# Step C: 审查
@codex review for race conditions and memory leaks
```

## 📁 安装后的文件位置

```
~/.local/bin/
  └── claude-optimized.sh     启动脚本

~/.claude/
  └── system-prompt.md         系统提示配置

~/
  └── QUICK-REFERENCE.txt      快速参考卡片

~/.bashrc 或 ~/.zshrc
  └── claude-opt 别名          快捷命令
```

## 🔧 手动安装步骤

如果你不想用自动安装脚本：

### 1. 复制启动脚本
```bash
cp claude-optimized.sh ~/.local/bin/
chmod +x ~/.local/bin/claude-optimized.sh
```

### 2. 复制系统提示
```bash
cp system-prompt.md ~/.claude/
```

### 3. 添加别名
在 `~/.bashrc` 或 `~/.zshrc` 中添加：
```bash
alias claude-opt='~/.local/bin/claude-optimized.sh'
alias cq='~/.local/bin/claude-optimized.sh'
```

### 4. 重新加载配置
```bash
source ~/.bashrc  # 或 ~/.zshrc
```

## 📊 配额管理策略

### Gemini (免费，大量使用)
- 每日配额: ~1,500 请求
- 成本: 免费 ✅
- 用途: 信息查询、文档搜索、错误分析
- 策略: **优先使用，不要节约**

### Claude (昂贵，保护使用)
- 配额: 200k tokens 上下文
- 成本: 昂贵 💰
- 用途: 文件操作、代码编写
- 策略: **仅用于必须文件访问的任务**

### Codex (有限，谨慎使用)
- 配额: 300-1500 消息 / 5小时
- 成本: 按量计费 ⏱️
- 用途: 代码审查、安全审计
- 策略: **保留给关键审查任务**

## 🔄 使用场景

### ❌ 遇到错误
```bash
@gemini analyze this error and suggest solutions: [paste error]
```
成本: 1 req (免费) ✅

### 🔧 创建/修改代码
```bash
Create a new Python module for data processing
```
成本: ~500-2000 tokens (受保护)

### 🧠 代码审查
```bash
@codex review this function for potential issues
```
成本: 1 msg (保留配额)

## 🛠️ 故障排除

### MCP 服务器未连接
```bash
# 检查 MCP 状态
claude mcp list

# 如果未找到，需要安装 MCP 服务器
# Gemini: https://github.com/missdeer/gemini-mcp-rs
# Codex: https://github.com/missdeer/codex-mcp-rs
```

### 别名不工作
```bash
# 确保已重新加载配置
source ~/.bashrc  # 或 ~/.zshrc

# 或重启终端
```

### Claude Code 未安装
```bash
npm install -g @anthropic/claude-code
```

## 📖 更多文档

- **QUICK-REFERENCE.txt** - 打印版快速参考
- **system-prompt.md** - 系统提示详细说明
- **setup-linux.sh** - 自动安装脚本源码

## 🎯 检查清单

在使用前确认：

- [ ] Claude Code 已安装 (`which claude`)
- [ ] MCP 服务器已配置 (`claude mcp list`)
- [ ] Gemini 和 Codex 都显示 "✓ Connected"
- [ ] 启动脚本可执行 (`ls -l ~/.local/bin/claude-optimized.sh`)
- [ ] 别名已配置 (`alias | grep claude-opt`)

## 💡 使用技巧

1. **打印快速参考**
   ```bash
   cat ~/QUICK-REFERENCE.txt
   # 或打印成 PDF 放在手边
   ```

2. **创建桌面快捷方式** (GNOME/KDE)
   创建 `.desktop` 文件指向 `claude-optimized.sh`

3. **tmux/screen 集成**
   在 tmux 配置中添加快捷键启动优化模式

4. **VS Code 集成**
   在 VS Code 的终端中运行 `claude-opt`

## 🎉 开始使用

```bash
# 1. 安装
bash setup-linux.sh

# 2. 重新加载 shell
source ~/.bashrc

# 3. 启动！
claude-opt
```

## 📝 版本信息

- **版本**: v1.3 - QUOTA-OPTIMIZED
- **平台**: Linux (Ubuntu, Debian, Fedora, Arch, etc.)
- **创建日期**: 2025-12-10
- **状态**: 🟢 完全就绪

## 🤝 支持

如果遇到问题：
1. 检查 MCP 服务器状态
2. 查看 QUICK-REFERENCE.txt
3. 确认所有依赖已安装

---

**准备好优化你的 Claude Code 工作流了吗？**

```bash
claude-opt
```

🚀 开始提高生产力！
