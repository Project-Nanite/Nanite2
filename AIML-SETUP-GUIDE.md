# AI/ML Environment Setup Guide for Nanite2

## Overview

This guide explains how to use the **pre-installed** AI/ML environment in your Nanite2 live system.

## NEW APPROACH: Pre-installed Tools!

### Build-Time (Already Done) ✅
During the live-build creation, the hook file `0160-ai-tools-buildtime-install.hook.chroot` has:
- ✅ **Pre-installed lightweight AI tools** (tgpt, Gemini CLI)
- ✅ **Fixed browser shortcuts** for web AI tools
- ✅ **Created desktop integration** files
- ✅ **Set up working menu entries** and shortcuts
- ✅ **Installed Ollama** (models downloaded separately)

### Runtime (What's Ready to Use)
After booting the live system, tools are **already installed and ready**!

## Installation Methods

### Method 1: Desktop Shortcuts (Recommended for New Users)

1. **Boot into Nanite2** and log in
2. **Look on the desktop** for these shortcuts:
   - 🚀 **Install Advanced AI Tools** - Main installer
   - 🦙 **Ollama** - Will prompt to install if not present
   - 💬 **Terminal GPT** - Will prompt to install if not present
   - ✨ **Cursor AI** - Will prompt to install if not present

3. **Click "Install Advanced AI Tools"** to install everything at once

### Method 2: Applications Menu

1. Open the **Applications Menu**
2. Navigate to **AI Tools** category
3. Click on any tool - it will prompt to install if needed

### Method 3: Terminal Installation (Advanced Users)

Open a terminal and run:
```bash
# Install all AI tools at once
sudo install-advanced-ai-tools

# Or check what's already installed
check-advanced-ai-tools

# Launch the AI terminal menu
ai-terminal
```

## What Gets Installed

The installer will download and install:

### 🦙 Ollama (Local LLM Runner)
- **Purpose**: Run large language models locally
- **Location**: System-wide installation
- **Usage**: `ollama run llama3.2:1b`
- **Web Interface**: http://127.0.0.1:11434

### 💬 tgpt (Terminal GPT Client)
- **Purpose**: ChatGPT-like interface in terminal
- **Usage**: `tgpt -i` for interactive mode
- **Features**: Free, fast, no API key needed

### 🔹 Gemini CLI (Google's AI CLI)
- **Purpose**: Google Gemini AI from command line
- **Usage**: `gemini chat "Your question"`
- **Requires**: Node.js (auto-installed)

### ✨ Cursor AI (AI-Powered Code Editor)
- **Purpose**: Advanced code editor with AI assistance
- **Location**: `/opt/ai-tools/Cursor.AppImage`
- **Features**: AI code completion, chat, debugging

## Post-Installation Usage

### Quick Start Commands

```bash
# Check installation status
check-advanced-ai-tools

# Launch AI terminal menu
ai-terminal

# Start Ollama service
ollama-start

# Use tgpt interactively
tgpt -i

# Launch Cursor AI
cursor-ai
```

### Desktop Integration

After installation, you'll find:
- **Applications Menu** → **AI Tools** category
- **Desktop shortcuts** for quick access
- **Terminal launchers** for command-line usage

## Troubleshooting

### Internet Connection Required
- The installer needs internet to download tools
- Run `ping google.com` to test connectivity

### Permission Issues
- The installer requires root privileges
- It will automatically prompt for sudo if needed

### Tool Not Working?
- Check status: `check-advanced-ai-tools`
- Reinstall: `sudo install-advanced-ai-tools`
- View logs in the terminal during installation

### Cursor AI Launch Issues
- The script handles root user compatibility
- Creates `nanite-user` account if running as root
- Uses proper X11/display forwarding

## Advanced Usage

### Custom AI Projects Directory
The system creates `/home/nanite-user/AI-ML-Projects` for organizing your work.

### Ollama Models
- Default model: `llama3.2:1b` (lightweight)
- Add more: `ollama pull codellama:7b`
- List models: `ollama list`

### Integration with Development
- Use Cursor AI for coding with AI assistance
- Use Ollama for local AI without internet
- Use tgpt for quick questions and research

## File Locations

- **Installer**: `/usr/local/bin/install-advanced-ai-tools`
- **Status Checker**: `/usr/local/bin/check-advanced-ai-tools`
- **AI Terminal**: `/usr/local/bin/ai-terminal`
- **Desktop Files**: `/usr/share/applications/`
- **Cursor AI**: `/opt/ai-tools/Cursor.AppImage`

## Security Notes

- All tools run with appropriate permissions
- Ollama runs locally (no data sent to cloud)
- tgpt uses free tier (no API key required)
- Cursor AI handles root user safely

---

**Ready to start?** Just click the "🚀 Install Advanced AI Tools" desktop shortcut!
