-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<Leader>h", function()
    Snacks.dashboard()
  end, { desc = "Home" })


local gitignore = require("gitignore")
local my_path = "./some/path"
vim.keymap.set("n", "<leader>G", function() end, { desc = "Gitignore" })
vim.keymap.set("n", "<leader>Gi", function()
    gitignore.generate(my_path)
end, { desc = "Create Gitignore" })
  

vim.keymap.set("n", "<leader>P", function() end, { desc = "Live Server" })
vim.keymap.set("n", "<leader>Pl", function()
    vim.cmd("PreLiveGo")
end, { desc = "Start Live Server" })