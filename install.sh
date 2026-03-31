#!/bin/bash
# Jiamandu Code Installer
# Dark-themed AI coding assistant based on Claude Code

set -e

echo "============================================"
echo "   🌙 Jiamandu Code Installer"
echo "   Dark-themed AI Coding Assistant"
echo "============================================"
echo ""

# Check Node.js version
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is required (>=18.0.0). Please install it first."
    exit 1
fi

NODE_VERSION=$(node -v | sed 's/v//' | cut -d. -f1)
if [ "$NODE_VERSION" -lt 18 ]; then
    echo "❌ Node.js >= 18.0.0 required. Current: $(node -v)"
    exit 1
fi

echo "✅ Node.js $(node -v) detected"

# Install globally
echo ""
echo "📦 Installing Jiamandu Code globally..."
npm install -g . --ignore-scripts

echo ""
echo "============================================"
echo "   ✅ Installation Complete!"
echo "============================================"
echo ""
echo "Usage:"
echo "  jiamandu          # Start interactive session"
echo "  jiamandu -p '...' # Non-interactive prompt"
echo "  jiamandu --help   # Show help"
echo ""
echo "Note: You need an Anthropic API key."
echo "  export ANTHROPIC_API_KEY=sk-ant-..."
echo ""
echo "🌙 Enjoy the dark side!"
