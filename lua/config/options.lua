-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Enable the option to require a Prettier config file
-- If no prettier config file is found, the formatter will not be used
vim.g.lazyvim_prettier_needs_config = false

-- Line Numbers
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.nu = true
vim.o.statuscolumn = "%s %l %r "

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Scrolling
vim.opt.scrolloff = 10

-- Remove LazyVim Autoformat
vim.g.autoformat = false
