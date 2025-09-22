return {
  "tpope/vim-fugitive",
  cmd = { "Git" , "G" },
  keys = {
    { '<leader>gs', "<cmd>rightb vert Git<cr>", 'n', desc = 'Fugitive vsplit'},
  }
}
