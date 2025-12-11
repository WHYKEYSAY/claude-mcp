#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Claude Code Quota-Optimized Mode - Setup Verification Script
验证配置是否完成
"""

import os
import subprocess
import sys
from pathlib import Path

def print_header(text):
    """打印标题"""
    print(f"\n{'='*70}")
    print(f"  {text}")
    print(f"{'='*70}\n")

def print_check(status, text):
    """打印检查结果"""
    symbol = "✅" if status else "❌"
    print(f"{symbol} {text}")

def check_file(path, description):
    """检查文件是否存在"""
    exists = os.path.exists(path)
    print_check(exists, f"{description}: {path}")
    return exists

def check_mcp_servers():
    """检查 MCP 服务器"""
    print("\n🔍 检查 MCP 服务器...")
    try:
        result = subprocess.run(
            ["claude", "mcp", "list"],
            capture_output=True,
            text=True,
            timeout=5
        )

        output = result.stdout + result.stderr

        gemini_ok = "gemini" in output.lower() and ("connected" in output.lower() or "✓" in output)
        codex_ok = "codex" in output.lower() and ("connected" in output.lower() or "✓" in output)

        print_check(gemini_ok, "Gemini MCP 服务器")
        print_check(codex_ok, "Codex MCP 服务器")

        return gemini_ok and codex_ok
    except Exception as e:
        print_check(False, f"无法检查 MCP 服务器: {e}")
        return False

def main():
    """主程序"""
    print_header("Claude Code 配额优化模式 - 设置验证")

    print("检查所有必要文件和配置...\n")

    checks = {
        "启动脚本": [
            (r"C:\Users\whyke\claude-optimized.bat", "Windows 启动脚本"),
        ],
        "系统提示": [
            (os.path.expanduser(r"~\.claude\system-prompt.md"), "系统提示文件"),
        ],
        "文档": [
            (r"C:\Users\whyke\QUOTA-OPTIMIZED-QUICK-REFERENCE.txt", "快速参考"),
            (r"C:\Users\whyke\HOW-TO-ACTIVATE-QUOTA-OPTIMIZED-MODE.md", "激活指南"),
            (os.path.expanduser(r"~/OneDrive/Documents/AI/claude-code-mcp-integration-guide.md"), "完整指南"),
            (r"C:\Users\whyke\SETUP-COMPLETE-CHECKLIST.md", "设置清单"),
        ]
    }

    all_ok = True

    for category, files in checks.items():
        print(f"\n📁 {category}:")
        for filepath, description in files:
            ok = check_file(filepath, description)
            all_ok = all_ok and ok

    # 检查 MCP 服务器
    print_header("MCP 服务器状态")
    mcp_ok = check_mcp_servers()
    all_ok = all_ok and mcp_ok

    # 总结
    print_header("✨ 验证结果")

    if all_ok:
        print("""
🎉 太好了! 所有配置都已完成!

你现在可以:

1️⃣  启动优化模式:
   > claude-optimized.bat

2️⃣  在对话中激活:
   > claude
   然后说: "激活配额优化模式"

3️⃣  开始使用命令:
   @gemini search for [topic]
   创建 [文件/代码]
   @codex review for [concerns]

享受优化的工作流!
""")
        return 0
    else:
        print("""
⚠️  发现一些缺失的文件或配置

请:
1. 确保所有文件都已创建
2. 检查 MCP 服务器是否安装和配置
3. 参考完整指南重新配置

需要帮助，查看:
- HOW-TO-ACTIVATE-QUOTA-OPTIMIZED-MODE.md
- claude-code-mcp-integration-guide.md
""")
        return 1

if __name__ == "__main__":
    sys.exit(main())
