return {
      "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
              lspconfig.clangd.setup({
                on_attach = on_attach,
                cmd = {"clangd"},
                filetypes = {"c", "cpp", "h", "hpp","cuda"},
              })
        end,
}
