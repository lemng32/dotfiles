return {
  "tpope/vim-fugitive",
  cmd = { "Git" , "G" },
  keys = {
    {
      '<leader>gs',
      function()
        vim.cmd('rightb vert Git')
      end,
      'n',
      desc = 'Run fugitive in vertical split'
    },
  }
}
