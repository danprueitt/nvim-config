-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local wk = require("which-key")

vim.api.nvim_exec(
  [[
  augroup python_dap
    autocmd!
    autocmd FileType python nnoremap <silent> <leader>dn :lua require('dap-python').test_method()<CR>
    autocmd FileType python nnoremap <silent> <leader>df :lua require('dap-python').test_class()<CR>
    autocmd FileType python vnoremap <silent> <leader>ds <ESC>:lua require('dap-python').debug_selection()<CR>
  augroup END
]],
  true
)

wk.register({
  ["<leader>d"] = {
    name = "Python DAP",
    n = { "<leader>dn", "Test method" },
    f = { "<leader>df", "Test class" },
    s = { "<leader>ds", "Debug selection" },
  },
})
