function UseCatppuccinMocha()
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
      }
    end
  })

  vim.cmd.colorscheme("catppuccin")
end

UseCatppuccinMocha()
