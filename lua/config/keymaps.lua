-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps header
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

keymap.set("n", "<C-a>", "gg<S-v>G")

keymap.set("n", "<leader>w", ":update<Return>", opts)
keymap.set("n", "<leader>W", ":wa<Return>", opts)
keymap.set("n", "<leader>q", ":quit<Return>", opts)
keymap.set("n", "<leader>Q", ":qa<Return>", opts)
keymap.set("n", "<S-q>", ":bd<Return>", opts)

keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "tw", ":tabclose<Return>", opts)

keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

keymap.set("n", "<S-Tab>", ":bn<Return>", opts)

keymap.set("n", "<C-S-h>", "<C-w><")
keymap.set("n", "<C-S-k>", "<C-w>>")
keymap.set("n", "<C-S-j>", "<C-w>+")
keymap.set("n", "<C-S-l>", "<C-w>-")

keymap.set("i", "<C-z>", "<C-y>")

keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)
