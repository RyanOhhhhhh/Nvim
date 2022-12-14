-- 第一次在机子上运行时，会克隆packer模块
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- lua在保护模式下加载packer模块
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    vim.notify("packer.nvim don't exists")
    return
end

-- 改变plugins.lua(此文件)时会重新加载
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

-- 初始化
packer.startup({function()
  -- Your plugins here
end,
config = {
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'single' })
    end
  }
}})

-- 插件安装
return require('packer').startup({
    function(use)
        --plugins packer tools
        use 'wbthomason/packer.nvim'

        -- colorschemes
        use 'folke/tokyonight.nvim'

        -- lsp(language server protocal 语言服务协议)
        use 'neovim/nvim-lspconfig'
        use 'williamboman/nvim-lsp-installer'

        -- clangd extension
        use 'p00f/clangd_extensions.nvim'

        -- 语法补全
        use 'hrsh7th/cmp-nvim-lsp'
        use 'hrsh7th/cmp-buffer'
        use 'hrsh7th/cmp-path'
        use 'hrsh7th/cmp-cmdline'
        use 'hrsh7th/nvim-cmp'

        -- 语法高亮与符号补全
        use 'nvim-treesitter/nvim-treesitter'
        use 'windwp/nvim-autopairs'

        -- 文件栏
        use {
        'nvim-tree/nvim-tree.lua',
            requires = {'nvim-tree/nvim-web-devicons'} -- 文件栏显示的图标
        }

        -- 文件大纲
        use 'simrat39/symbols-outline.nvim'

        -- buffer顶栏
        use {
            'akinsho/bufferline.nvim', 
            tag = "v3.*", 
            requires = 'nvim-tree/nvim-web-devicons'
        }

        -- 底下状态栏美化
        use {
            'nvim-lualine/lualine.nvim',
            requires = { 'kyazdani42/nvim-web-devicons', opt = true }
        }

        -- Automatically set up your configuration after cloning packer.nvim
        -- Put this at the end after all plugins
        if packer_bootstrap then
            require('packer').sync()
        end
    end,
    config = {
        display = {
            open_fn = function()
                return require('packer.util').float({ border = 'single' })
            end
        }
    }
})
