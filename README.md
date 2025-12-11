# Claude Code Quota-Optimized Mode (v1.3)

一个完整的三模型协作系统，优化你的 Claude Code Pro 配额使用。

## 📋 核心原则

```
烧Gemini的免费配额 (1,500/天) 🔥
  ↓
保护Claude的上下文 (200k) 🛡️
  ↓
合理使用Codex的配额 (5小时制) ⏱️
```

## 🚀 快速启动

### Windows 用户:
```bash
claude-optimized.bat
```

### Linux/Mac 用户:
```bash
bash claude-optimized.sh
```

### 在 Claude 中激活:
```
claude
然后说: "激活配额优化模式"
```

## 👥 三模型协作

| 角色 | 用途 | 配额 | 命令 |
|------|------|------|------|
| **🏗️ Claude** | 文件操作、代码编写 | 200k tokens | 直接描述 |
| **🔍 Gemini** | 查文档、错误分析 | 1,500/天 (免费) | `@gemini search for...` |
| **🔬 Codex** | 逻辑审查、安全检查 | 300-1500/5h | `@codex review for...` |

## 📁 文件结构

```
claude-mcp/
├── README.md                           (这个文件)
├── INDEX.md                           (完整文档索引)
├── claude-optimized.bat               (Windows 启动脚本)
├── claude-optimized.sh                (Linux/Mac 启动脚本)
├── QUICK-REFERENCE.txt                (快速参考卡片)
├── ACTIVATION-GUIDE.md                (激活使用指南)
├── SETUP-CHECKLIST.md                 (设置完成清单)
├── system-prompt.md                   (Claude 系统提示)
├── verify-setup.py                    (配置验证脚本)
└── docs/
    └── claude-code-mcp-integration-guide.md (完整集成指南 v1.3)
```

## 💬 快速命令示例

```bash
# 查资料 (烧Gemini的免费配额)
@gemini search for React 18 breaking changes

# 写代码 (用Claude)
Create a FastAPI app with authentication

# 审查代码 (用Codex)
@codex review this code for race conditions

# 3-Step 完整工作流
Step A: @gemini find Python async best practices
Step B: Create an async Python module
Step C: @codex review for performance issues
```

## 📖 文档快速导航

- **快速上手**: 见 `QUICK-REFERENCE.txt`
- **如何激活**: 见 `ACTIVATION-GUIDE.md`
- **设置验证**: 见 `SETUP-CHECKLIST.md`
- **完整集成指南**: 见 `docs/claude-code-mcp-integration-guide.md` (v1.3)
- **系统提示配置**: 见 `system-prompt.md`

## ✨ 核心特性

✅ **一键启动** - 漂亮的欢迎界面和 MCP 检查
✅ **自动路由** - 智能识别任务类型，分配到最合适的工具
✅ **配额管理** - 优先使用 Gemini 的免费配额
✅ **上下文保护** - 让 Gemini 总结，而不是粘贴原始文档
✅ **3-Step Trifecta** - 研究 → 实现 → 验证的完整工作流
✅ **场景路由** - 4 大场景的明确指导（错误→Gemini、代码→Claude、审查→Codex）

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

## 🎯 使用场景

### ❌ 错误 / 问题
```
→ @gemini search for this error and tell me solutions
成本: 1 req (免费) ✅
```

### 🔧 代码修改 / 创建
```
→ Create a new [module/function/component]
成本: ~500-2000 tokens (受保护)
```

### 🧠 逻辑审查 / 安全检查
```
→ @codex review [file] for [concerns]
成本: 1 msg (保留配额)
```

## 📞 需要帮助?

1. **快速参考**: `QUICK-REFERENCE.txt`
2. **激活说明**: `ACTIVATION-GUIDE.md`
3. **完整指南**: `docs/claude-code-mcp-integration-guide.md`
4. **验证配置**: 运行 `verify-setup.py`

## ✅ 检查清单

设置前检查:
- [ ] MCP 服务器已安装 (`claude mcp list`)
- [ ] Gemini 和 Codex 已连接
- [ ] 有启动脚本访问权限

使用前检查:
- [ ] 这是查资料吗? → 用 @gemini
- [ ] 需要文件操作吗? → 用 Claude
- [ ] 需要逻辑审查吗? → 用 @codex

## 🔄 工作流示例

**任务**: "设计一个Rust异步Web服务器，带速率限制"

```
Step A - 研究 (用Gemini)
  @gemini search for Rust tokio rate limiting best practices
  成本: 1 req (免费) ✅

Step B - 实现 (用Claude)
  创建 main.rs, server.rs, Cargo.toml
  成本: ~500 tokens (保护中)

Step C - 审查 (用Codex)
  @codex review for race conditions and memory leaks
  成本: 1 msg (保留配额)

总成本: 高效! 🚀
```

## 📌 版本信息

- **版本**: v1.3 - QUOTA-OPTIMIZED RELEASE
- **创建日期**: 2025-12-10
- **状态**: 🟢 完全就绪
- **支持平台**: Windows, Linux, macOS

## 📝 许可证

这是个人工作流配置，可自由使用和修改。

## 🤝 贡献

欢迎反馈和改进建议!

---

**准备好进入配额优化模式了吗?**

```bash
claude-optimized.bat
```

🚀 开始提高生产力!
