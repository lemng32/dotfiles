return {
  'stevearc/oil.nvim',
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  lazy = false,
  keys = {
    { "<leader>pv", "<cmd>Oil<cr>", "n" },
    { "<leader>os", "<cmd>rightbelow Oil<cr>", "n"},
    { "<leader>oo", "<cmd>rightbelow vert Oil<cr>", "n"},
    {
      "<leader>yp",
      function()
        local dir = require("oil").get_current_dir()
        if dir then
          vim.fn.setreg("+", dir)
          vim.notify("Copied directory path:\n" .. dir, vim.log.levels.INFO)
        else
          vim.notify("Not in an Oil buffer", vim.log.levels.WARN)
        end
      end,
      "n",
      ft = "oil",
    },
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
