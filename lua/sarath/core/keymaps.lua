-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- select all
keymap.set("n", "<leader>a", "ggVG", { desc = "Select all in Visual Block" }) -- select all IN VISUAL BLOCK

-- custom keybindings
vim.keymap.set("n", "<leader>w", "<Esc>:w<CR>")
vim.keymap.set("n", "<leader>x", "<Esc>:x<CR>")
vim.keymap.set("n", "<leader>q", "<Esc>:q!<CR>")
vim.keymap.set("n", "<leader>n", "<Esc>:bn<CR>")
vim.keymap.set("n", "<leader>m", "<Esc>:bp<CR>")
vim.keymap.set("n", "<leader>d", "<Esc>:bd<CR>")

-- compiling
vim.keymap.set(
  "n",
  "<leader>bcp",
  "<Esc>:! /opt/homebrew/bin/g++-13 %; ./a.out <CR>",
  { desc = "compile the current file (c++) and execute " }
)
vim.keymap.set(
  "n",
  "<leader>bsml",
  "<Esc>:! sml % > output.txt<CR>",
  { desc = "Interpret current sml code and write it to output.txt" }
)
