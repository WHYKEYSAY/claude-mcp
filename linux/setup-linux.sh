#!/bin/bash
# Linux 环境配额优化一键安装脚本
# Claude Code Quota-Optimized Mode (v1.3)

set -e  # 遇到错误立即退出

# 颜色定义
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'
BOLD='\033[1m'

echo -e "${BOLD}${BLUE}═══════════════════════════════════════════════════════════${NC}"
echo -e "${BOLD}${BLUE}   Claude Code 配额优化模式 - Linux 一键安装${NC}"
echo -e "${BOLD}${BLUE}═══════════════════════════════════════════════════════════${NC}"
echo ""

# 1. 创建必要目录
echo -e "${YELLOW}[1/5]${NC} 创建必要目录..."
mkdir -p ~/.local/bin
mkdir -p ~/.claude

# 2. 复制启动脚本
echo -e "${YELLOW}[2/5]${NC} 安装启动脚本..."
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cp "$SCRIPT_DIR/claude-optimized.sh" ~/.local/bin/
chmod +x ~/.local/bin/claude-optimized.sh

# 3. 安装系统提示
echo -e "${YELLOW}[3/5]${NC} 安装系统提示配置..."
if [ -f "$SCRIPT_DIR/system-prompt.md" ]; then
    cp "$SCRIPT_DIR/system-prompt.md" ~/.claude/
    echo -e "${GREEN}✓${NC} system-prompt.md 已安装到 ~/.claude/"
else
    echo -e "${YELLOW}⚠${NC} 未找到 system-prompt.md，跳过..."
fi

# 4. 复制快速参考
echo -e "${YELLOW}[4/5]${NC} 安装快速参考文档..."
if [ -f "$SCRIPT_DIR/QUICK-REFERENCE.txt" ]; then
    cp "$SCRIPT_DIR/QUICK-REFERENCE.txt" ~/
    echo -e "${GREEN}✓${NC} QUICK-REFERENCE.txt 已复制到 ~/"
fi

# 5. 设置 shell 别名
echo -e "${YELLOW}[5/5]${NC} 配置快捷命令..."

# 检测使用的 shell
SHELL_RC=""
if [ -n "$BASH_VERSION" ]; then
    SHELL_RC="$HOME/.bashrc"
elif [ -n "$ZSH_VERSION" ]; then
    SHELL_RC="$HOME/.zshrc"
fi

if [ -n "$SHELL_RC" ] && [ -f "$SHELL_RC" ]; then
    # 检查别名是否已存在
    if ! grep -q "alias claude-opt=" "$SHELL_RC"; then
        echo "" >> "$SHELL_RC"
        echo "# Claude Code 配额优化模式快捷命令" >> "$SHELL_RC"
        echo "alias claude-opt='~/.local/bin/claude-optimized.sh'" >> "$SHELL_RC"
        echo "alias cq='~/.local/bin/claude-optimized.sh'  # 更短的别名" >> "$SHELL_RC"
        echo -e "${GREEN}✓${NC} 已添加别名到 $SHELL_RC"
        echo -e "   ${BLUE}claude-opt${NC} - 启动配额优化模式"
        echo -e "   ${BLUE}cq${NC}         - 更短的别名"
    else
        echo -e "${YELLOW}⚠${NC} 别名已存在，跳过..."
    fi
fi

# 检查 MCP 服务器
echo ""
echo -e "${BOLD}检查 MCP 服务器状态...${NC}"
if command -v claude &> /dev/null; then
    claude mcp list 2>/dev/null | head -10
else
    echo -e "${RED}⚠️  Claude Code 未安装${NC}"
    echo "请先安装: npm install -g @anthropic/claude-code"
fi

# 完成提示
echo ""
echo -e "${GREEN}${BOLD}═══════════════════════════════════════════════════════════${NC}"
echo -e "${GREEN}${BOLD}   ✅ 安装完成！${NC}"
echo -e "${GREEN}${BOLD}═══════════════════════════════════════════════════════════${NC}"
echo ""
echo -e "${BOLD}📌 安装的文件:${NC}"
echo "   • ~/.local/bin/claude-optimized.sh (启动脚本)"
echo "   • ~/.claude/system-prompt.md (系统提示)"
echo "   • ~/QUICK-REFERENCE.txt (快速参考)"
echo ""
echo -e "${BOLD}🚀 快速启动方式:${NC}"
echo ""
echo -e "${YELLOW}方式 1${NC}: 使用完整路径"
echo "   $ ~/.local/bin/claude-optimized.sh"
echo ""
echo -e "${YELLOW}方式 2${NC}: 使用别名 (需重新加载 shell)"
echo "   $ source $SHELL_RC    # 重新加载配置"
echo "   $ claude-opt          # 启动优化模式"
echo "   $ cq                  # 更短的命令"
echo ""
echo -e "${YELLOW}方式 3${NC}: 直接启动 (如果 ~/.local/bin 在 PATH 中)"
echo "   $ claude-optimized.sh"
echo ""
echo -e "${BOLD}📋 核心原则:${NC}"
echo -e "   ${RED}🔥 烧 Gemini (1,500/天)${NC} - 免费的，尽管用！"
echo -e "   ${YELLOW}🛡️  保护 Claude (200k)${NC}   - 昂贵的，仅文件操作"
echo -e "   ${BLUE}⏱️  节约 Codex (5小时)${NC}  - 有限的，留给审查"
echo ""
echo -e "${BOLD}💡 下一步:${NC}"
echo "   1. 重新加载 shell: source $SHELL_RC"
echo "   2. 运行: claude-opt"
echo "   3. 享受配额优化工作流！"
echo ""
