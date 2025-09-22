return {
  'stevearc/oil.nvim',
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  lazy = false,
  keys = {
    { "<leader>pv", "<cmd>Oil<cr>", "n" },
    { "<leader>os", "<cmd>rightbelow Oil<cr>", "n"},
    { "<leader>oo", "<cmd>rightbelow vert Oil<cr>", "n"},
  },
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
}
