return {
  "nvim-treesitter/nvim-treesitter",
  event = {"BufReadPre", "BufNewFile"},
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function() 
    require("nvim-treesitter.configs").setup {
      ensure_installed = { "c","cpp", "lua", "vim", "vimdoc", "query","cuda" },

      sync_install = false,

      auto_install = true,

      ident = {enable = true },

      autotag = { enbale = true },

      highlight = {
        enable = true,
      },

    } 
  end,

}
