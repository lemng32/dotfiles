return {
  "catppuccin/nvim",
  lazy = false,
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha",
      background = {
        light = "latte",
        dark = "mocha",
      },
      transparent_background = true,
      color_overrides = {},
      custom_highlights = function(colors)
        return {
          LineNr = { fg = colors.overlay1 },
          LineNrAbove = { fg = colors.overlay1 },
          LineNrBelow = { fg = colors.overlay1 },
          TermCursor = { bg = "#f4b8e4" },
          Visual = { bg = colors.surface2 },
          CursorLine = { bg = colors.surface1 },
        }
      end
    })
    vim.cmd([[colorscheme catppuccin]])
  end,
}
