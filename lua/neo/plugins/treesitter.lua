return {
  "nvim-treesitter/nvim-treesitter",
  branch= "master",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
      auto_install = true,
      highlight = {
        enable = true,
      },
      indent = { enable = true },
      -- for selection
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<Leader>ss", -- start selection
          node_incremental = "<Leader>si", -- select increment
          scope_incremental = "<Leader>sc", -- select scope
          node_decremental = "<Leader>sd",  -- select decrement
        }
      }
    })
  end,
}
