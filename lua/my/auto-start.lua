------------------------------
---------启动设置-------------
------------------------------
-- vim.cmd 就是通过底边栏输入操作
-- vim.cmd[[colorscheme tokyonight]] = :colorscheme tokyonight
-- 设置主题
vim.cmd[[colorscheme tokyonight]] 

-- vim.cmd[[NvimTreeOpen]]

local function open_nvim_tree()

  -- open the tree
  require("nvim-tree.api").tree.open()
end

-- open_nvim_tree()
