-- options
---------------------------------------------------------
-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.encoding = "UTF-8"

--line numbers
vim.opt.number = true

vim.opt.relativenumber = true

--split windows 
vim.opt.splitbelow = true

vim.opt.splitright = true

-- tabs and identation

vim.opt.expandtab = true

vim.opt.tabstop = 2

vim.opt.shiftwidth = 2

vim.opt.autoindent = true

vim.opt.wrap = false

--search settings

vim.opt.ignorecase = true

vim.opt.smartcase = true

--cusor line
vim.opt.cursorline = true

--clipboard


vim.opt.clipboard = "unnamedplus"


vim.opt.inccommand = "split"

--color scheme setting
vim.opt.termguicolors = true

vim.opt.background = "dark"

vim.opt.signcolumn = "yes"

vim.opt.backspace = "indent,eol,start"

--turn of swapfile
vim.opt.swapfile = false

vim.lsp.inlay_hint.enable(true)
