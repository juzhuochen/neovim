# Neovim Configuration 🌌

This repository contains my personal Neovim configuration. You can clone it directly into your Neovim configuration directory with the following command:

```bash
git clone https://github.com/juzhuochen/neovim.git ~/.config/nvim
```

## Plugin Manager: Lazy.nvim ⚡

This configuration uses `lazy.nvim` for managing plugins. To get started, you'll need to install `lazy.nvim`:

```bash
git clone https://github.com/folke/lazy.nvim.git ~/.local/share/nvim/lazy/lazy.nvim
```

Once installed, Neovim will automatically load and manage the specified plugins.

## Plugins Overview 🛠️

Here’s a brief description of the main plugins included in this configuration:

- **Mason** (`mason.nvim`, `mason-lspconfig.nvim`): A powerful LSP management tool that helps install and configure LSP servers easily. 🛠️
  
- **nvim-cmp**: An auto-completion plugin that provides intelligent code suggestions and integrates with various sources such as LSP, buffer, and snippets. 💡

- **nvim-lspconfig**: Pre-configured settings for Neovim's built-in LSP client, making it easier to set up and manage LSP servers. 🔧

- **nvim-treesitter**: Enables better syntax highlighting, code folding, and additional features like code-aware text objects, powered by Tree-sitter. 🌳

- **Telescope**: A fuzzy finder plugin that allows for quick searching of files, buffers, help tags, and more. It integrates with `plenary.nvim` for extended functionality. 🔍

- **bufferline**: Provides a better buffer management experience with a customizable buffer bar. 📚

- **which-key**: Displays a pop-up with available key bindings in Neovim, helping you discover new commands quickly. 🗝️

- **gitsigns**: Git integration to show line changes, add hunk management, and enable easy staging or reverting changes. 🔄

## Appearance Customization 🎨

### Transparent Background

This configuration includes a transparent background for a sleek, modern look. To enable transparency:

1. Enabled the transparent background plugin in nvim:

```bash
:TransparentEnable 
```

2. Additionally, you can customize the transparency level in `lua/plugins/theme/transparent.lua`.

### Kanagawa Colorscheme 🌈

The `kanagawa` colorscheme is used for a beautiful and balanced theme with soft colors. You can enable the theme by adding the following to your configuration:

```lua
vim.cmd.colorscheme("kanagawa-dragon")
```

You can further customize the theme by editing the `lua/plugins/theme/kanagawa.lua` file, where you can adjust the color palette and other settings.

## Updating Plugins and Configuration 🔄

To update all plugins and ensure your configuration stays up-to-date with the latest changes, use the following command:

```bash
:Lazy sync
```

This will synchronize and update all your installed plugins using `lazy.nvim`.

## Future Work 🚀

Other features and improvements are still under development. Stay tuned for future updates!

