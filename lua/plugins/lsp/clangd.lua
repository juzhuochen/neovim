return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")
    lspconfig.clangd.setup({
      on_attach = function(_, buf)
        local group = vim.api.nvim_create_augroup("clangd_no_inlay_hints_in_insert", { clear = true })

        vim.keymap.set("n", "<leader>lh", function()
          if require("clangd_extensions.inlay_hints").toggle_inlay_hints() then
            vim.api.nvim_create_autocmd("InsertEnter", { group = group, buffer = buf,
            callback = require("clangd_extensions.inlay_hints").disable_inlay_hints
          })
          vim.api.nvim_create_autocmd({ "TextChanged", "InsertLeave" }, { group = group, buffer = buf,
          callback = require("clangd_extensions.inlay_hints").set_inlay_hints
        })
      else
        vim.api.nvim_clear_autocmds({ group = group, buffer = buf })
      end
    end, { buffer = buf, desc = "[l]sp [h]ints toggle" })
  end,
  cmd = {"clangd"},
  filetypes = {"c", "cpp", "h", "hpp","cuda"},
})
  end,
}
