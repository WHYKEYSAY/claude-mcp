@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion

echo 🚀 启动 Claude Code 配额优化模式...
echo.
echo ╔════════════════════════════════════════════════════════════╗
echo ║     Claude Code Quota-Optimized Mode (v1.3)                ║
echo ╚════════════════════════════════════════════════════════════╝
echo.
echo 📋 核心原则:
echo    烧Gemini的免费配额 ^(1,500/天^) 🔥
echo      ↓
echo    保护Claude的上下文 ^(200k^) 🛡️
echo      ↓
echo    合理使用Codex的配额 ^(5小时制^) ⏱️
echo.
echo 👥 角色分配:
echo    🏗️  Claude     → 文件操作、代码编写
echo    🔍 Gemini    → 信息查询、错误分析 ^(@gemini^)
echo    🔬 Codex     → 逻辑审查、安全审计 ^(@codex^)
echo.
echo 🔄 工作流: Research ^(Gemini^) → Implementation ^(Claude^) → Verification ^(Codex^)
echo.
echo ✅ 检查MCP服务器状态...
claude mcp list 2>nul | findstr /i "gemini codex" >nul || (
    echo ⚠️  未找到MCP服务器，请先配置
)
echo.
echo 🟢 模式已激活，输入你的任务:
echo    例: '@gemini search for React 18 documentation'
echo    例: '创建一个新的Python模块'
echo    例: '@codex review this function for race conditions'
echo.
echo ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo.

REM 启动 Claude Code
claude
