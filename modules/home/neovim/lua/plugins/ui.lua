-- # lualine
require("lualine").setup({
  options = { theme = "catppuccin" }
})

require("bufferline").setup({})

-- # mini.nvim
require("mini.comment").setup()     -- gc/gcc commentaries
require("mini.surround").setup()    -- sa sd sf
require("mini.pairs").setup()       -- auto )
require("mini.indentscope").setup() -- vertical tab line

-- # mini icons
require("mini.icons").setup({
  style = "glyph", -- or "ascii" without nerd font
})
