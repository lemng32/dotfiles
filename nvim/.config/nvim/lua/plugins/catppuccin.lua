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
      float = {
        transparent = false,
        solid = false,
      },
      color_overrides = {},
      custom_highlights = function(colors)
        return {
          LineNr = { fg = colors.overlay1 },
          LineNrAbove = { fg = colors.overlay1 },
          LineNrBelow = { fg = colors.overlay1 },
          TermCursor = { bg = "#f4b8e4" },
          Visual = { bg = colors.surface1 },
          CursorLine = { bg = colors.surface1 },

          BlinkCmpMenu = { bg = colors.base },
          BlinkCmpDoc = { bg = colors.base },
          BlinkCmpMenuBorder = { fg = colors.surface2 },
          BlinkCmpDocBorder = { fg = colors.surface2 },
          BlinkCmpDocSeparator = { fg = colors.sky, bg = colors.base },

          WinSeparator = { fg = colors.lavender }
        }
      end,
      integrations = {
        lualine = true,
        treesitter = true,
      },
    })
    vim.cmd.colorscheme('catppuccin')
  end,
}
