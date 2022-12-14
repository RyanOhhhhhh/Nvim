
-- 全局变量leader和局部leader--
vim.g.mapleader = " "
vim.g.maplocalleader = ""
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true}

-- 设置快捷键map('模式', '按键', '映射为xx', opt)
map("n", "<leader>q", ":q<CR>", opt)
map("n", "<leader>w", ":w<CR>", opt)

map("n", "<leader>t", ":NvimTreeFocus<CR>", opt)
