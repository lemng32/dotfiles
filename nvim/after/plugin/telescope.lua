local builtin = require('telescope.builtin')
local actions = require('telescope.actions')

require('telescope').setup({
  defaults = {
    mappings = {
      i = {
	['<Esc>'] = actions.close,
      },
    },
  },
})

vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Telescope find files in git repo' })
vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, { desc = 'Telescope search' })
