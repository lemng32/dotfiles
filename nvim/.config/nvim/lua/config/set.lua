vim.opt.guicursor = {
  "i-ci-ve:block-TermCursor",
}

vim.opt.nu = true
vim.opt.relativenumber = true

vim.api.nvim_create_autocmd("InsertEnter", {
  callback = function() vim.o.relativenumber = false end,
})

vim.api.nvim_create_autocmd("InsertLeave", {
  callback = function() vim.o.relativenumber = true end,
})

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.g.markdown_recommended_style = 0
