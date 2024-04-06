return {
  "lukas-reineke/indent-blankline.nvim",
  event = { "BufReadPre","BufNewFile"},
  config = function()
    require("ibl").setup({
      enabled = true,
      debounce = 200,
      indent = {
        char = "┊",
        smart_indent_cap = true,
        repeat_linebreak = false,
      },
      whitespace = {
        remove_blankline_trail = false,
      },
    })
  end,

}
