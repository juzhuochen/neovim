return {
  "nvim-treesitter/nvim-treesitter",
  event = {"BufReadPre", "BufNewFile"},
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
  config = function()
    require("nvim-treesitter.configs").setup {
      ensure_installed = {
        "bash",
        "c",
        "cpp",
        "lua",
        "vim",
        "vimdoc",
        "cuda",
        "json",
        "bash",
        "rust",
        "markdown",
        "python",
      },

      sync_install = false,
      auto_install = true,
      indent = {enable = true },
      autotag = { enbale = true },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },

      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<Leader>ss", -- set to `false` to disable one of the mappings
          node_incremental = "<Leader>si",
          scope_incremental = "<Leader>sc",
          node_decremental = "<Leader>sd",
        },
      },

      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ["af"] = { query = "@function.outer", desc = "around a function" },
            ["if"] = { query = "@function.inner", desc = "inner part of a function" },
            ["ac"] = { query = "@class.outer", desc = "around a class" },
            ["ic"] = { query = "@class.inner", desc = "inner part of a class" },
            ["as"] = { query = "@scope", query_group = "locals", desc = "Select language scope" },
            ["ai"] = { query = "@conditional.inner", desc = "around part of if statement"},
            ["ii"] = { query = "@conditional.outer", desc = "inner part of is statement"},
            ["al"] = { query = "@loop.outer", desc = "around a loop"},
            ["il"] = { qeury = "@loop.inner", desc = "inner a loop"},
            ["ap"] = { query = "@parameter.outer", desc = "around a parameter"},
            ["ip"] = { query = "@parameter.inner", desc = "inner a parameter"},
          },
          selection_modes = {
            ["@parameter.outer"] = "v", -- charwise
            ["@parameter.inner"] = "v", -- charwise
            ["@function.outer"] = "v", -- charwise
            ["@conditional.outer"] = "V", -- linewise
            ["@loop.outer"] = "V", -- linewise
            ["@class.outer"] = "<c-v>", -- blockwise
          },
          include_surrounding_whitespace = false,
        },
        move = {
          enable = true,
        },


      },
    }
  end,

}
