# 如何激活 "配额优化模式"

## 📋 你有 3 种方式进入这个模式

---

## 方式1️⃣: 一键启动 (最简单) ⭐

### Windows 用户:
```bash
> claude-optimized.bat
```

### Linux/Mac 用户:
```bash
$ bash claude-optimized.sh
```

**效果**:
- 显示漂亮的欢迎界面
- 检查 MCP 服务器状态
- 直接进入 Claude Code 配额优化模式

---

## 方式2️⃣: Claude 启动时告诉我

启动 Claude Code:
```bash
claude
```

然后在对话中说:
```
激活配额优化模式
```
或
```
进入三巨头架构工作流
```

我会立即切换到这个模式。

---

## 方式3️⃣: 我自动识别 (最智能) ✨

如果你的任务描述很清楚，我会**自动**识别并进入配额优化模式，无需你显式激活。

**例子**:
```
@gemini search for React 18 breaking changes
```
→ 我自动知道这是信息查询，会进入模式

```
创建一个 Python 数据分析模块
```
→ 我自动知道这需要文件操作，会进入模式

```
@codex review this function for memory leaks
```
→ 我自动知道这是代码审查，会进入模式

---

## 🎯 进入模式后，我会:

1. ✅ **自动识别任务类型**
   - 这是查资料吗? → 用 @gemini
   - 这需要代码改动吗? → 我直接做
   - 这需要审查逻辑吗? → 用 @codex

2. ✅ **遵守配额原则**
   - 🔥 烧 Gemini 的 ~1,500/天 配额 (免费)
   - 🛡️ 保护 Claude 的 200k 上下文 (昂贵)
   - ⏱️ 合理使用 Codex 的 300-1500/5小时 (有限)

3. ✅ **使用 3-Step Trifecta 工作流**
   - Step A: Research (用Gemini查资料)
   - Step B: Implementation (用Claude写代码)
   - Step C: Verification (用Codex审查)

4. ✅ **提供清晰的沟通**
   - 告诉你我用了哪个工具
   - 解释为什么这样分配
   - 显示配额消耗情况

---

## 📊 关键差异: 普通模式 vs 配额优化模式

### 普通模式 ❌
```
你: 找一下 FastAPI 的最新文档
我: 直接粘贴整个文档到对话...
    (消耗大量 Claude 上下文)
```

### 配额优化模式 ✅
```
你: 找一下 FastAPI 的最新文档
我: @gemini search for latest FastAPI documentation
    (消耗 1 个免费 Gemini 请求)
    ↓
    [Gemini 返回简洁总结]
    ↓
我: 根据总结为你解释关键要点
    (仅消耗少量 Claude 上下文)
```

**结果**: 相同的答案，但节省了 95% 的 Claude 上下文！

---

## 🚀 启动后的样子

你会看到这样的欢迎界面:

```
🚀 启动 Claude Code 配额优化模式...

╔════════════════════════════════════════════════════════════╗
║     Claude Code Quota-Optimized Mode (v1.3)                ║
╚════════════════════════════════════════════════════════════╝

📋 核心原则:
   烧Gemini的免费配额 (1,500/天) 🔥
     ↓
   保护Claude的上下文 (200k) 🛡️
     ↓
   合理使用Codex的配额 (5小时制) ⏱️

👥 角色分配:
   🏗️  Claude     → 文件操作、代码编写
   🔍 Gemini    → 信息查询、错误分析 (@gemini)
   🔬 Codex     → 逻辑审查、安全审计 (@codex)

🔄 工作流: Research (Gemini) → Implementation (Claude) → Verification (Codex)

✅ 检查MCP服务器状态...
gemini: ✓ Connected
codex: ✓ Connected

🟢 模式已激活，输入你的任务:
   例: '@gemini search for React 18 documentation'
   例: '创建一个新的Python模块'
   例: '@codex review this function for race conditions'
```

---

## 💬 使用示例

### 例1: 查资料 (用Gemini)
```
你: @gemini 找最新的 Python 3.13 性能改进
我: 正在用 @gemini 搜索...
   [Gemini 返回总结]
我: 根据最新信息，Python 3.13 的关键改进是:
   - JIT 编译器更新
   - asyncio 性能优化
   - ...
```

### 例2: 创建代码 (用Claude)
```
你: 创建一个 FastAPI 应用，包含认证功能
我: 我来为你创建这些文件:
   ✓ main.py
   ✓ auth.py
   ✓ requirements.txt
   ✓ .env.example
   [创建完成]
```

### 例3: 3-Step 工作流 (全部模型协作)
```
你: 帮我设计一个带速率限制的异步 Rust 服务器

我: 明白了，我用 3-Step Trifecta:

Step A - 研究 (用Gemini):
  @gemini search for Rust tokio rate limiting best practices 2025
  [总结: tower-governor, governor crate, custom implementation...]

Step B - 实现 (用Claude):
  创建文件:
   ✓ main.rs (主服务器)
   ✓ ratelimit.rs (限流逻辑)
   ✓ Cargo.toml (依赖)

Step C - 验证 (用Codex):
  @codex review main.rs and ratelimit.rs for race conditions
  [反馈: 行47的互斥锁使用正确，边界情况处理完整]

✅ 完成! 代码已生成并通过审查
```

### 例4: 代码审查 (用Codex)
```
你: @codex 检查这个函数有没有安全问题
me: 正在用 @codex 分析...
   [Codex 审查]
我: 发现 1 个潜在问题:
   - 行28: SQL 参数应该用占位符，不要直接字符串拼接
   建议: 改为参数化查询
```

---

## 🔐 配置检查

创建时已经为你准备好:

✅ **系统提示文件**: `~/.claude/system-prompt.md`
   - 包含完整的角色和工作流定义
   - 我会参考这个文件来指导行为

✅ **启动脚本**:
   - Windows: `claude-optimized.bat`
   - Linux/Mac: `claude-optimized.sh`

✅ **快速参考**: `QUOTA-OPTIMIZED-QUICK-REFERENCE.txt`
   - 随时查看，无需打开Claude

✅ **MCP 服务器**:
   - `gemini-mcp-rs` ✓ Connected
   - `codex-mcp-rs` ✓ Connected

---

## 📞 如何停用/恢复

### 临时停用 (保留上下文):
```
我: 进入普通模式
```

### 重新激活:
```
我: 回到配额优化模式
```

### 永久停用:
删除或重命名 `~/.claude/system-prompt.md` 文件

---

## 🎓 推荐流程

### 第一次使用?
1. 运行 `claude-optimized.bat` (或 Linux 脚本)
2. 看到欢迎界面后，试试简单任务
3. 看我怎样自动路由到正确的工具
4. 观察配额消耗情况

### 需要深入了解?
- 查看: `C:\Users\whyke\OneDrive\Documents\AI\claude-code-mcp-integration-guide.md`
- 这是完整的架构和工作流文档

### 需要快速参考?
- 查看: `QUOTA-OPTIMIZED-QUICK-REFERENCE.txt`
- 这有所有的命令、场景、模板

---

## ⚠️ 注意事项

1. **MCP 服务器必须连接**
   - 检查: 运行 `claude mcp list`
   - 如果显示 "No MCP servers"，参考集成指南重新配置

2. **首次启动慢一点**
   - 第一次连接 Gemini/Codex 可能需要 5-10 秒
   - 之后会快得多

3. **Gemini 和 Codex 需要 API 密钥**
   - Gemini: 需要配置 Google API 密钥
   - Codex: 需要配置 OpenAI API 密钥

4. **网络连接**
   - Gemini 需要互联网访问来搜索
   - 如果离线，Gemini 功能不可用

---

## 🆘 故障排除

### 症状: "找不到 MCP 服务器"
**解决**:
```bash
claude mcp list
```
如果空白，运行:
```bash
# 重新添加服务器
claude mcp add --transport stdio --scope user gemini -- /home/user/.local/bin/gemini-mcp-rs
claude mcp add --transport stdio --scope user codex -- /home/user/.local/bin/codex-mcp-rs
```

### 症状: "Gemini 搜索不工作"
**检查**:
1. 有没有配置 Google API 密钥?
2. 有没有网络连接?
3. API 配额有没有超?

### 症状: "我没有进入配额优化模式"
**检查**:
1. 运行了启动脚本吗? (不是普通 `claude` 命令)
2. 或者你在普通模式下，试试说: "激活配额优化模式"

---

## 📞 快速命令参考

| 需要... | 使用... | 命令 |
|--------|--------|------|
| 启动优化模式 | 脚本 | `claude-optimized.bat` |
| 查资料 | @gemini | `@gemini search for...` |
| 修改代码 | Claude (我) | 直接说任务 |
| 审查代码 | @codex | `@codex review for...` |
| 查看配置 | MCP | `/mcp list` |
| 查看这个文件 | 文本编辑器 | `HOW-TO-ACTIVATE...md` |
| 快速查询 | 文本文件 | `QUOTA-OPTIMIZED-QUICK-REFERENCE.txt` |

---

## ✨ 最后

现在每次你打开 Claude Code，都可以:

1. 一键启动优化模式
2. 自动路由任务到最合适的工具
3. 保护你的 Claude 上下文
4. 最大化利用免费 Gemini 配额
5. 策略性使用有限的 Codex 配额

**享受更高效的开发体验!** 🚀

---

**版本**: v1.3 - QUOTA-OPTIMIZED
**创建**: 2025-12-10
**文档位置**: `C:\Users\whyke\HOW-TO-ACTIVATE-QUOTA-OPTIMIZED-MODE.md`
