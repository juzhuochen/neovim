# Neovim 配置 🌌

本仓库包含我个人的 Neovim 配置。你可以使用以下命令将其直接克隆到你的 Neovim 配置目录中：

```bash
git clone https://github.com/juzhuochen/neovim.git ~/.config/nvim
```

## 插件管理器：Lazy.nvim ⚡

此配置使用 `lazy.nvim` 管理插件。要开始使用，你需要安装 `lazy.nvim`：

```bash
git clone https://github.com/folke/lazy.nvim.git ~/.local/share/nvim/lazy/lazy.nvim
```

安装后，Neovim 将自动加载和管理指定的插件。

## 插件概述 🛠️

以下是该配置中包含的主要插件的简要介绍：

- **Mason** (`mason.nvim`, `mason-lspconfig.nvim`): 强大的 LSP 管理工具，帮助轻松安装和配置 LSP 服务器。 🛠️

- **nvim-cmp**: 自动补全插件，提供智能的代码建议，并与 LSP、缓冲区和片段等多种来源集成。 💡

- **nvim-lspconfig**: 为 Neovim 内置 LSP 客户端提供预配置设置，使设置和管理 LSP 服务器变得更简单。 🔧

- **nvim-treesitter**: 提供更好的语法高亮、代码折叠以及基于 Tree-sitter 的代码感知文本对象等额外功能。 🌳

- **Telescope**: 模糊查找插件，允许快速搜索文件、缓冲区、帮助标签等。与 `plenary.nvim` 集成以扩展功能。 🔍

- **bufferline**: 提供更好的缓冲区管理体验，拥有可自定义的缓冲区条。 📚

- **which-key**: 显示 Neovim 中可用的键绑定弹出窗口，帮助你快速发现新命令。 🗝️

- **gitsigns**: Git 集成功能，显示行变更、添加哈希管理，并方便地进行暂存或恢复更改。 🔄

## 外观自定义 🎨

### 透明背景

该配置包括透明背景，提供时尚、现代的外观。要启用透明度：

1. 确保你已启用透明背景插件：

```lua
require("plugins.theme.transparent")
```

2. 你还可以在 `lua/plugins/theme/transparent.lua` 中自定义透明度。

### Kanagawa 主题 🌈

`kanagawa` 主题用于提供美观且柔和的颜色平衡。你可以通过以下方式启用该主题：

```lua
vim.cmd("colorscheme kanagawa")
```

你可以通过编辑 `lua/plugins/theme/kanagawa.lua` 文件进一步自定义主题，在该文件中可以调整颜色调色板和其他设置。

## 更新插件和配置 🔄

要更新所有插件并确保你的配置保持最新，请使用以下命令：

```bash
:Lazy sync
```

这将使用 `lazy.nvim` 同步并更新所有已安装的插件。

## 未来工作 🚀

其他功能和改进仍在开发中，敬请期待！
