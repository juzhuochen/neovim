return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = { 
      "lua_ls",
    },
  },
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    "neovim/nvim-lspconfig",
  },
  config = function ()
    require("mason-lspconfig").setup() {
      automatic_enable = {
        "lua_ls",
        "vimls",
        "python"
      }
    }
  end
}
