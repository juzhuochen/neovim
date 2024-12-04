local api = vim.api

-- disable auto comment new line
api.nvim_create_autocmd("BufEnter", { command = [[set formatoptions-=cro]]})

-- highlight on Yank
api.nvim_create_autocmd("TextYankPost",{
  callback = function()
    vim.highlight.on_yank()  
  end,
})
