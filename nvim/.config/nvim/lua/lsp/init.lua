return {
  "mason-org/mason.nvim",
  dependencies = {
    "mason-org/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },
  opts = {
    servers = {
      lua_ls = {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
          },
        },
      },
      bashls = {
        filetypes = { "bash", "sh", "zsh" },
      },
      pyright = {},
      ts_ls = {},
    }
  },
  config = function(_, opts)
    require("mason").setup({
      ui = {
          check_outdated_packages_on_open = true,
          border = "single",
          backdrop = 1,
      },
    })

    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls", "bashls", "pyright", "ts_ls",
      },
      automatic_enable = false,
    })

    for server, config in pairs(opts.servers) do
      vim.lsp.config(server, config)
      vim.lsp.enable(server)
    end
    
  end
}
