vim.opt.fileencoding = "utf-8"
vim.opt.showtabline = 2

-- 缩进
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

-- 行号
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 4	

-- 开启终端gui的color
vim.opt.termguicolors = true
-- 代码长度太长会自动换行
vim.opt.wrap = false
-- 使用鼠标
vim.opt.mouse = "a"
-- 当前行高
vim.opt.cursorline = true
-- 备份文件
vim.opt.backup = false
-- 查找高亮
vim.opt.hlsearch = true
-- 忽略大小写
vim.opt.smartcase = true
-- 外部修改了文件，vim自动同步
vim.opt.autoread = true
