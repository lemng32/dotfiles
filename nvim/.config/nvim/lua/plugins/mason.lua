return {
  "mason-org/mason-lspconfig.nvim",
  opts = {},
  dependencies = {
    {
      "mason-org/mason.nvim",
      opts = {
        ui = {
          check_outdated_packages_on_open = true,
          border = "single",
          backdrop = 1,
        }
      }
    },
    "neovim/nvim-lspconfig",
  },
}
