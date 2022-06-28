lua << EOF
local keyopts = { noremap = true, silent = true }
-- vim.keymap.set({'n', 'v', 'o'}, 'Y', require('tree-climber').goto_parent)
-- vim.keymap.set({'n', 'v', 'o'}, 'O', require('tree-climber').goto_child, keyopts)
-- vim.keymap.set({'n', 'v', 'o'}, 'N', require('tree-climber').goto_next, keyopts)
-- vim.keymap.set({'n', 'v', 'o'}, 'E', require('tree-climber').goto_prev, keyopts)
-- vim.keymap.set('n', '<c-e>', require('tree-climber').swap_prev, keyopts)
-- vim.keymap.set('n', '<c-n>', require('tree-climber').swap_next, keyopts)
EOF
