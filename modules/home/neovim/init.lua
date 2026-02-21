-- set leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- load settings
require("config.options")
require("config.keymaps")

-- load plugins
require("plugins.colors")
require("plugins.ui")
require("plugins.telescope")
require("plugins.treesitter")
require("plugins.lsp-cmp")
require("plugins.mini-files")
