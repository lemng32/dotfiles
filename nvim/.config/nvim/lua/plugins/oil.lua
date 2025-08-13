return {
  'stevearc/oil.nvim',
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  lazy = false,
  opts = {
    default_file_explorer = true,
    keymaps = {
      ["<C-s>"] = {
        "actions.select",
        opts = { vertical = true, split = 'botright' }
      },
      ["<C-p>"] = {
        callback = function()
          local oil = require 'oil'
          oil.open_preview { vertical = true, split = 'botright' }
        end
      },
    },
    view_options = {
      show_hidden = true
    }
  },
  keys = {
    { "<leader>pv", "<cmd>Oil<cr>", "n" }  
  }
}
