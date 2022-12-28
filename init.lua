------------------------------
---------导入插件配置---------
------------------------------
require "plugins.plugins"

require "toolbar.nvim-tree"
require "toolbar.lua-line"
require "toolbar.buffer-line"
require "toolbar.symbols-outline"

require "lsp.lsp-install"
require "lsp.lsp-config"
require "lsp.nvim-cmp"
require "lsp.tree-sitter"
require "lsp.nvim-autopairs"

require "appearance.theme-tokyonight"
require "appearance.web-devicons"
------------------------------
---------导入自己配置---------
------------------------------
-- 自己nvim的配置
require "my.options"
-- 快捷键
require "my.mapping"
-- 自启动项
require "my.auto-start"

