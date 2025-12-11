#!/bin/bash
# Claude Code Quota-Optimized Mode (v1.3) - Linux Version
# 配额优化启动脚本

# 设置颜色
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color
BOLD='\033[1m'

clear

echo -e "${BOLD}${BLUE}🚀 启动 Claude Code 配额优化模式...${NC}"
echo ""
echo "╔════════════════════════════════════════════════════════════╗"
echo "║     Claude Code Quota-Optimized Mode (v1.3)                ║"
echo "╚════════════════════════════════════════════════════════════╝"
echo ""
echo -e "${BOLD}📋 核心原则:${NC}"
echo -e "   ${RED}烧Gemini的免费配额 (1,500/天) 🔥${NC}"
echo "     ↓"
echo -e "   ${YELLOW}保护Claude的上下文 (200k) 🛡️${NC}"
echo "     ↓"
echo -e "   ${BLUE}合理使用Codex的配额 (5小时制) ⏱️${NC}"
echo ""
echo -e "${BOLD}👥 角色分配:${NC}"
echo -e "   🏗️  ${GREEN}Claude${NC}    → 文件操作、代码编写"
echo -e "   🔍 ${BLUE}Gemini${NC}   → 信息查询、错误分析 ${YELLOW}(@gemini)${NC}"
echo -e "   🔬 ${RED}Codex${NC}    → 逻辑审查、安全审计 ${YELLOW}(@codex)${NC}"
echo ""
echo -e "${BOLD}🔄 工作流:${NC} Research (Gemini) → Implementation (Claude) → Verification (Codex)"
echo ""
echo -e "${YELLOW}✅ 检查MCP服务器状态...${NC}"

# 检查 MCP 服务器
if command -v claude &> /dev/null; then
    claude mcp list 2>/dev/null | grep -E "(gemini|codex)" | while read -r line; do
        if echo "$line" | grep -q "✓ Connected"; then
            echo -e "   ${GREEN}✓${NC} $line"
        elif echo "$line" | grep -q "✗"; then
            echo -e "   ${RED}✗${NC} $line"
        else
            echo "   $line"
        fi
    done
else
    echo -e "   ${RED}⚠️  Claude Code 未找到，请先安装${NC}"
fi

echo ""
echo -e "${GREEN}${BOLD}🟢 模式已激活，输入你的任务:${NC}"
echo "   例: '@gemini search for React 18 documentation'"
echo "   例: '创建一个新的Python模块'"
echo "   例: '@codex review this function for race conditions'"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# 启动 Claude Code
exec claude
