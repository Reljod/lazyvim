-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Set leader key to space
local keymap = vim.keymap

-- General keymaps
keymap.set("n", "<leader>wq", ":wq<CR>", { desc = "Save and quit current file" }) -- save and quit
keymap.set("n", "<leader>qq", ":q<CR>", { desc = "Quit file" }) -- quit
keymap.set("n", "<leader>qQ", ":q!<CR>", { desc = "Force Quit file" }) -- quit without saving
keymap.set("n", "<leader>ww", ":w<CR>", { desc = "Save current file" }) -- save
-- Center screen while doing motions
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")
-- Search and Replace current word in the file
keymap.set(
  "n",
  "<leader>sR",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Search and Replace Current Word in File" }
)

-- Harpoon
keymap.set("n", "<leader>ha", function()
  require("harpoon"):list():add()
end, { desc = "Harpoon a file" })
keymap.set("n", "<leader>hh", function()
  local harpoon = require("harpoon")
  harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "Harpoon Quick Menu" })

for i = 1, 9 do
  keymap.set("n", "<leader>" .. i, function()
    require("harpoon"):list():select(i)
  end, { desc = "Select harpoon [" .. i .. "]" })
end
