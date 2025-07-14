function UseCatppuccinMocha()
  require("catppuccin").setup({
    flavour = "mocha",
    background = {
      light = "latte",
      dark = "mocha",
    },
    transparent_background = true,
    color_overrides = {},
  })
  vim.cmd.colorscheme("catppuccin")
end

UseCatppuccinMocha()
