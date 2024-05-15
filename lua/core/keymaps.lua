--keymap settings
vim.g.mapleader = " "

local keymap = vim.keymap

-- keymap.set()
--
--

-- windows management
keymap.set("n","<leader>to","<cmd>tabnew<CR>",{desc="Open new tab"})
keymap.set("n","<leader>tc","<cmd>tabclose<CR>",{desc="close current tab"})
keymap.set("n","<leader>tp","<cmd>tabprevious<CR>",{desc="go to previous tab"})
keymap.set("n","<leader>tn","<cmd>tabnext<CR>",{desc="go to next tab"})

