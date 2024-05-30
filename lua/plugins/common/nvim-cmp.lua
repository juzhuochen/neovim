return {
  "hrsh7th/nvim-cmp",
  lazy = false,
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    {
      "L3MON4D3/LuaSnip",
      build = "make install_jsregexp"
    },
    "saadparwaiz1/cmp_luasnip",
    "rafamadriz/friendly-snippets",
    "onsails/lspkind.nvim",

  },
  config = function()
    local cmp_kinds = {
      Text = '  ',
      Method = '  ',
      Function = '  ',
      Constructor = '  ',
      Field = '  ',
      Variable = '  ',
      Class = '  ',
      Interface = '  ',
      Module = '  ',
      Property = '  ',
      Unit = '  ',
      Value = '  ',
      Enum = '  ',
      Keyword = '  ',
      Snippet = '  ',
      Color = '  ',
      File = '  ',
      Reference = '  ',
      Folder = '  ',
      EnumMember = '  ',
      Constant = '  ',
      Struct = '  ',
      Event = '  ',
      Operator = '  ',
      TypeParameter = '  ',
    }
    local cmp = require("cmp")
    local luasnip = require("luasnip")
    local lspkind = require("lspkind")
    lspkind.init{}
    require("luasnip.loaders.from_vscode").lazy_load()

    cmp.setup({

    sources = cmp.config.sources({
      { name = "nvim_lsp"},
      { name = "luasnip" },
      { name = "buffer" },
      { name = "path" },
    }),
      view = {
        entries = "custom" -- can be "custom", "wildmenu" or "native"
      },
      completion = {
        completeopt = "menu,menuone,preview,noselect",
      },
      snippet = {
      expand = function(args)
        luasnip.lsp_expand(args.body)
      end,
    },
    mapping = cmp.mapping.preset.insert({
      ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
      ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
      ["<C-b>"] = cmp.mapping.scroll_docs(-4),
      ["<C-f>"] = cmp.mapping.scroll_docs(4),
      ["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
      ["<C-e>"] = cmp.mapping.abort(), -- close completion window
      ["<CR>"] = cmp.mapping.confirm({ select = false }),
    }),
    -- vs-code like completion menu 
    formatting = {
      fields = { "kind", "abbr" },
      format = function(_, vim_item)
        vim_item.kind = cmp_kinds[vim_item.kind] or ""
        return vim_item
      end,
    },
    sorting = {
      comparators = {
        cmp.config.compare.offset,
        cmp.config.compare.exact,
        cmp.config.compare.recently_used,
        cmp.config.compare.kind,
        cmp.config.compare.sort_text,
        cmp.config.compare.length,
        cmp.config.compare.order,
      },
    },
  })


end,
}
