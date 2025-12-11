# Claude Code Quota-Optimized Mode - 文档索引

完整的配置文件和文档目录。

## 📁 项目结构

```
claude-mcp/
├── README.md                          ⭐ 项目概览 (从这里开始)
├── INDEX.md                           (这个文件)
├── QUICK-REFERENCE.txt                快速参考卡片
├── ACTIVATION-GUIDE.md                如何激活模式
├── SETUP-CHECKLIST.md                 设置完成清单
├── claude-optimized.bat               Windows 启动脚本
├── claude-optimized.sh                Linux/Mac 启动脚本
├── system-prompt.md                   Claude 系统提示配置
├── verify-setup.py                    配置验证脚本
├── docs/
│   └── claude-code-mcp-integration-guide.md    完整集成指南 (v1.3)
└── .git/                              Git 仓库
```

## 📖 文档导航

### 快速开始 (5分钟)
1. **README.md** - 项目概览和核心原则
2. **QUICK-REFERENCE.txt** - 命令、快捷方式、场景路由

### 详细学习 (20分钟)
3. **ACTIVATION-GUIDE.md** - 3种激活方式、使用示例
4. **SETUP-CHECKLIST.md** - 设置完成清单、验证配置

### 深入理解 (1小时+)
5. **docs/claude-code-mcp-integration-guide.md** - 完整的v1.3集成指南
   - 三模型架构详解
   - 配额管理策略
   - 工作流示例
   - MCP 配置步骤

### 技术配置
6. **system-prompt.md** - Claude AI 的系统提示（自动加载）
7. **verify-setup.py** - Python 脚本验证配置是否完整

### 启动脚本
8. **claude-optimized.bat** - Windows 一键启动
9. **claude-optimized.sh** - Linux/Mac 一键启动

## 🚀 快速启动

### Windows:
```bash
claude-optimized.bat
```

### Linux/Mac:
```bash
bash claude-optimized.sh
```

### 在 Claude 中激活:
```
claude
然后说: "激活配额优化模式"
```

## 📋 核心原则

```
烧Gemini的免费配额 (1,500/天) 🔥
  ↓
保护Claude的上下文 (200k) 🛡️
  ↓
合理使用Codex的配额 (5小时制) ⏱️
```

## 👥 三模型协作

| 角色 | 用途 | 配额 | 命令 |
|------|------|------|------|
| **🏗️ Claude** | 文件操作、代码编写 | 200k tokens | 直接描述 |
| **🔍 Gemini** | 查文档、错误分析 | 1,500/天 (免费) | `@gemini search for...` |
| **🔬 Codex** | 逻辑审查、安全检查 | 300-1500/5h | `@codex review for...` |

## 🔄 3-Step Trifecta 工作流

**Step A - Research (Burn Gemini)**
```
@gemini search for [topic] and summarize
成本: 1 req (免费) ✅
```

**Step B - Implementation (Use Claude)**
```
Create [files/code] using that summary
成本: ~500-2000 tokens (保护中)
```

**Step C - Verification (Protect Codex)**
```
@codex review for [concerns]
成本: 1 msg (保留配额)
```

## 💬 快速命令示例

```bash
# 查资料
@gemini search for React 18 breaking changes

# 写代码
Create a FastAPI application with authentication

# 审查代码
@codex review this code for race conditions

# 完整工作流
Step A: @gemini find Python async best practices
Step B: Create an async Python module
Step C: @codex review for performance issues
```

## 📊 文件说明

### README.md
- 项目概览
- 快速启动方式
- 核心功能清单
- 文档导航

### QUICK-REFERENCE.txt
- 快速启动
- 核心原则
- 角色分配表
- 场景路由矩阵
- 命令模板
- 配额守护规则
- **可打印!**

### ACTIVATION-GUIDE.md
- 3种启动方式
- 启动后的表现
- 关键差异对比
- 使用示例和场景
- 常见问题解答
- 快速启动指令

### SETUP-CHECKLIST.md
- 文件创建清单
- 如何启动
- 每次启动看到的内容
- 核心原则总结
- MCP 服务器检查
- 配额概览
- 下一步指南

### claude-code-mcp-integration-guide.md (v1.3)
- 完整架构说明
- 三模型角色详解
- 配额优化策略
- 场景分配指南
- 实际工作流示例
- MCP 安装步骤
- 配置详情
- 故障排除
- 环境变量设置

### system-prompt.md
- Claude AI 的系统指导
- 角色定义
- 工作流规则
- 场景路由逻辑
- 配额管理原则
- 启动检查清单

### claude-optimized.bat (Windows)
- 启动时显示欢迎界面
- MCP 服务器状态检查
- 直接进入 Claude Code

### claude-optimized.sh (Linux/Mac)
- 同 .bat 文件功能
- Bash 兼容

### verify-setup.py
- 验证所有文件是否存在
- 检查 MCP 服务器连接
- 配置完整性检查

## 🎯 使用场景

### 场景1: 查资料
```
⚠️ 错误日志 / API 不清楚 / 需要最佳实践
→ @gemini search for [topic]
成本: 1 req (免费)
```

### 场景2: 代码编写
```
📝 创建新功能 / 修改代码 / 重构模块
→ 直接描述任务给Claude
成本: ~500-2000 tokens
```

### 场景3: 代码审查
```
🐛 逻辑验证 / 安全检查 / 性能优化
→ @codex review for [concerns]
成本: 1 msg
```

## ✨ 核心特性

✅ **一键启动** - 漂亮的欢迎界面和 MCP 检查
✅ **自动路由** - 智能识别任务，分配到最合适工具
✅ **配额管理** - 优先使用 Gemini 的免费配额
✅ **上下文保护** - 让 Gemini 总结，而不是粘贴
✅ **3-Step Workflow** - 完整的研究→实现→验证流程
✅ **场景指导** - 明确的任务分配矩阵

## 📞 需要帮助?

1. **快速查询** → QUICK-REFERENCE.txt
2. **如何使用** → ACTIVATION-GUIDE.md
3. **设置验证** → SETUP-CHECKLIST.md
4. **深入学习** → docs/claude-code-mcp-integration-guide.md
5. **验证配置** → python verify-setup.py

## 📊 配额概览

```
Gemini:  ~1,500 requests/day
         ████████████████████████ FREE ✅

Claude:  200,000 tokens (context window)
         ████████████████████││││ EXPENSIVE 💰
         (保护这个资源!)

Codex:   300-1500 messages / 5 hours
         ██████││││││ LIMITED ⏱️
         (用于关键任务)
```

## 🔄 工作流示例

**任务**: "设计一个Rust异步Web服务器，带速率限制"

```
Step A - 研究 (用Gemini)
  @gemini search for Rust tokio rate limiting 2025 best practices
  成本: 1 req (免费) ✅

Step B - 实现 (用Claude)
  创建 main.rs, server.rs, Cargo.toml
  成本: ~500 tokens (保护中)

Step C - 审查 (用Codex)
  @codex review for race conditions and memory leaks
  成本: 1 msg (保留配额)

总成本: 高效! 🚀
```

## 📝 版本信息

- **版本**: v1.3 - QUOTA-OPTIMIZED RELEASE
- **创建日期**: 2025-12-10
- **最后更新**: 2025-12-10
- **状态**: 🟢 完全就绪
- **支持**: Windows, Linux, macOS

## 🔗 相关链接

- GitHub: [missdeer/gemini-mcp-rs](https://github.com/missdeer/gemini-mcp-rs)
- GitHub: [missdeer/codex-mcp-rs](https://github.com/missdeer/codex-mcp-rs)
- MCP Spec: [anthropics/model-context-protocol](https://github.com/anthropics/model-context-protocol)

## 🎓 推荐学习路径

### 第一次使用 (10分钟)
1. 读 README.md
2. 运行 claude-optimized.bat
3. 试一个简单任务: `@gemini search for...`

### 深入学习 (30分钟)
1. 读 QUICK-REFERENCE.txt
2. 读 ACTIVATION-GUIDE.md
3. 试 3-Step Trifecta 工作流

### 完全掌握 (1小时+)
1. 读完整集成指南 (docs/)
2. 理解配额管理策略
3. 掌握所有场景路由

## ✅ 快速检查清单

- [ ] 克隆/下载了这个仓库
- [ ] 读过 README.md
- [ ] MCP 服务器已安装 (`claude mcp list`)
- [ ] 运行过启动脚本
- [ ] 看到了欢迎界面
- [ ] 试过 `@gemini` 命令
- [ ] 试过创建代码
- [ ] 试过 `@codex` 审查
- [ ] 读过 QUICK-REFERENCE.txt
- [ ] 理解了 3-Step Trifecta

如果都做了，你已经准备好了! 🚀

---

**准备好进入配额优化模式了吗?**

运行启动脚本:
```bash
claude-optimized.bat
```

开始提高生产力! 🎉
