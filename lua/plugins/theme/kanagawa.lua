return {
  "rebelot/kanagawa.nvim",
  priority = 1000,
  config = function()
    -- Default options:
    require('kanagawa').setup({
      compile = false,
      undercurl = true,
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true},
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = vim.g.transparent_enabled,
      dimInactive = false,
      terminalColors = true,
      colors = {
        palette = {},
        theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
      },
      overrides = function(colors)
        return {}
      end,
      theme = "wave",
      background = {
        dark = "wave",           -- try "dragon" !
        light = "lotus"
      },
    })

    vim.cmd.colorscheme("kanagawa-wave")
  end,
}
