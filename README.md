# Homebrew Tools

Homebrew formulas for bobmatnyc's MCP and AI development tools.

## Installation

```bash
# Add the tap
brew tap bobmatnyc/tools

# Install any or all tools
brew install claude-mpm
brew install mcp-vector-search
brew install mcp-ticketer
brew install mcp-skillset
brew install ai-trackdown-pytools
```

## Available Tools

### MCP and AI Agent Tools

- **claude-mpm** (v4.26.1) - Claude Multi-Agent Project Manager
- **mcp-vector-search** (v0.12.8) - Semantic code search with MCP
- **mcp-ticketer** (v1.2.10) - Universal ticket management for AI agents
- **mcp-skillset** (v0.5.1) - Dynamic RAG-powered skills for code assistants

### AI Trackdown PyTools

Python CLI tools for AI project tracking and task management.

**Commands provided:**
- `aitrackdown` - Main CLI interface
- `atd` - Short alias for aitrackdown

**Features:**
- Complete project tracking and task management
- AI-powered ticket creation and management
- Git integration for project context
- Template-based workflow automation
- Rich CLI interface with syntax highlighting
- Shell completions for Zsh and Fish

## Quick Start

### AI Trackdown PyTools

After installation, initialize a new project:

```bash
# Initialize a new AI Trackdown project
aitrackdown init project --name "My Project"

# Create a new task
aitrackdown create task --title "Implement feature X"

# Check project status
aitrackdown status

# Get help
aitrackdown --help
```

## Updating

```bash
brew update
brew upgrade bobmatnyc/tools/<formula-name>
```

## Requirements

- macOS 10.15+ or Linux
- Python 3.11+ (automatically managed by Homebrew)
- Git (for project context features)

## Development

This tap is maintained alongside the individual tool projects. Formula updates are automatically managed through the release process.

### Local Development

```bash
# Test a formula locally
brew install --build-from-source ./Formula/<formula-name>.rb

# Debug installation issues
brew install --verbose --debug ./Formula/<formula-name>.rb

# Audit a formula
brew audit --strict ./Formula/<formula-name>.rb
```

## License

MIT License - see the individual package repositories for details.
