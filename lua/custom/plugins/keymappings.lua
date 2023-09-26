-- Define the keymappings
local set_keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

set_keymap('n', '<C-h>', '<cmd>TmuxNavigateLeft<CR>', opts)
set_keymap('n', '<C-l>', '<cmd>TmuxNavigateRight<CR>', opts)
set_keymap('n', '<C-j>', '<cmd>TmuxNavigateDown<CR>', opts)
set_keymap('n', '<C-k>', '<cmd>TmuxNavigateUp<CR>', opts)

-- Normal mode toggle comment
set_keymap('n', '<leader>#', '<cmd>lua require("Comment.api").toggle.linewise.current()<CR>', opts)

-- Visual mode toggle comment
set_keymap('v', '<leader>#', ':<C-U>lua require("Comment.api").toggle.lfinewise(vim.fn.visualmode())<CR>', opts)

-- vertical split
set_keymap('n', '<leader>pv', '<cmd>Vex<CR>', opts)

return {}
