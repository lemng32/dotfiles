require("mason").setup({
  ui = {
    check_outdated_packages_on_open = true,
    border = "single",
    backdrop = 1,
  }
})

require("mason-lspconfig").setup()
