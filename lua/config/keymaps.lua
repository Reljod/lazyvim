-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Set leader key to space
local keymap = vim.keymap

-- General keymaps
keymap.set("n", "<leader>wq", ":wq<CR>", { desc = "Save and quit current file" }) -- save and quit
keymap.set("n", "<leader>qq", ":q!<CR>", { desc = "Force quit file" }) -- quit without saving
keymap.set("n", "<leader>ww", ":w<CR>", { desc = "Save current file" }) -- save
