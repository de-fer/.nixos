-- # mini.files - file tree

require("mini.files").setup({
  mappings = {
    go_in        = "<Right>",
    go_in_plus   = "<CR>",
    go_out       = "<Left>",
    gou_out_plus = "-",
    reset        = "<BS>",
    reveal_cwd   = "@",
    show_help    = "g?",
    synchronize  = "=",
    trim_left    = "<",
    trim_right   = ">",
  },

  windows = {
    preview = true,
    width_focus   = 30,
    width_nofocus = 15,
    width_preview = 40,
  },
})

-- # hotkeys
vim.keymap.set("n", "-", function()
  MiniFiles.open(vim.api.nvim_buf_get_name(0))
end, { desc = "mini.files (current dir)" })

vim.keymap.set("n", "<leader>e", MiniFiles.open, { desc = "mini.files (cwd)" })
