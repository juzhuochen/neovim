return{
  "williamboman/mason-lspconfig.nvim",
  dependencies = { "mason.nvim"},
  config = function()
    require("mason-lspconfig").setup({
      ensure_installed = {"lua_ls"},
    })

    require("mason-lspconfig").setup_handlers({
      function (server_name)
        require("lspconfig")[server_name].setup ({})
      end,

      ["clangd"] = function()
        local lspconfig = require("lspconfig")
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        lspconfig.clangd.setup({
          capabilities = capabilities,
          on_attach = on_attach ,
          cmd = {"clangd"},
          filetypes = {"c","cpp","cc","h","hpp","cu"},

        })
      end,
      --
    })
  end,
}
