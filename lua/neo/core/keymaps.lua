--keymap settings
vim.g.mapleader = " "

local opts = { noremap = true, silent = true }

local keymap = vim.keymap

-- keymap.set()
--
--

-- windows management
keymap.set("n", "<leader>tn", "<cmd>tabnew<CR>", opts)
keymap.set("n", "<leader>tq", "<cmd>tabclose<CR>", opts)
keymap.set("n", "<leader>tk", "<cmd>tabprevious<CR>", opts)
keymap.set("n", "<leader>tj", "<cmd>tabnext<CR>", opts)


-- save and quit
keymap.set('n', '<leader>w', ':w<CR>',opts)
keymap.set('n', '<leader>q', ':q<CR>',opts)
keymap.set('n', '<leader>wa', ':wa<CR>',opts)
keymap.set('n', '<leader>wqa', ':wqa<CR>',opts)
keymap.set('i', 'jk', '<Esc>, opts')




