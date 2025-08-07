# Minimal Neovim Configuration

This repository contains a minimal, fast Neovim configuration focused on core functionality. Clean and efficient setup with only essential plugins.

```bash
git clone https://github.com/juzhuochen/neovim.git ~/.config/nvim
```

## Plugin Manager: Lazy.nvim ⚡

This configuration uses `lazy.nvim` for managing plugins. Lazy.nvim will be automatically installed on first startup.

## Core Plugins

This minimal configuration includes only the most essential plugins:

### LSP & Language Support

- **mason.nvim** + **mason-lspconfig.nvim**: LSP server management and installation
- **nvim-lspconfig**: Pre-configured LSP client settings
- **nvim-treesitter**: Syntax highlighting and parsing

### Complection

- **blink.cmp** :  fast, fuzzy matcher

### Git Integration

- **gitsigns.nvim**: Git status in sign column, hunk navigation, and staging
