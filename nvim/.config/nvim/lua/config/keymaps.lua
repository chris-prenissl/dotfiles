-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Move line up and down
vim.keymap.set("n", "<C-2>", ":m .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("n", "<C-1>", ":m .+1<CR>==", { desc = "Move line down" })
