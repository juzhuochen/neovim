return {
      "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            on_attach = on_attach
            lspconfig.clangd.setup({
            cmd = {"clangd"},

            filetypes = {"c", "cpp", "h", "hpp","cuda"},

            })
        end
}
