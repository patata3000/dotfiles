lua << EOF
require('nvim-treesitter.configs').setup {
  -- https://github.com/nvim-treesitter/nvim-treesitter-textobjects
  textobjects = {
    select = {
      enable = true,
      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
        ["al"] = "@loop.outer",
        ["il"] = "@loop.inner",
        ["ai"] = "@conditional.outer",
        ["ii"] = "@conditional.inner",
      },
    },

--     swap = {
--       enable = true,
--       swap_next = {
--         ["<leader>vp"] = "@parameter.inner",
--         ["<leader>vf"] = "@function.outer",
--       },
--       swap_previous = {
--         ["<leader>op"] = "@parameter.inner",
--         ["<leader>of"] = "@function.outer",
--       },
--     },
--     move = {
--       enable = true,
--       set_jumps = true, -- whether to set jumps in the jumplist
--       goto_next_start = {
--         ["<leader>tf"] = "@function.outer",
--         ["<leader>tc"] = "@class.outer",
--         ["<leader>ti"] = "@conditional.outer",
--         ["<leader>tl"] = "@loop.outer",
--         ["<leader>ta"] = "@call.outer",
--         ["<leader>tp"] = "@parameter.outer",
--       },
--       goto_next_end = {
--         ["<leader>sf"] = "@function.outer",
--         ["<leader>sc"] = "@class.outer",
--         ["<leader>si"] = "@conditional.outer",
--         ["<leader>sl"] = "@loop.outer",
--         ["<leader>sa"] = "@call.outer",
--         ["<leader>sp"] = "@parameter.outer",
--       },
--       goto_previous_start = {
--         ["<leader>if"] = "@function.outer",
--         ["<leader>ic"] = "@class.outer",
--         ["<leader>ii"] = "@conditional.outer",
--         ["<leader>il"] = "@loop.outer",
--         ["<leader>ia"] = "@call.outer",
--         ["<leader>ip"] = "@parameter.outer",
--       },
--       goto_previous_end = {
--         ["<leader>ef"] = "@function.outer",
--         ["<leader>ec"] = "@class.outer",
--         ["<leader>ei"] = "@conditional.outer",
--         ["<leader>el"] = "@loop.outer",
--         ["<leader>ea"] = "@call.outer",
--         ["<leader>ep"] = "@parameter.outer",
--       },
--     },
  },
}
EOF
