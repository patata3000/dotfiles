lua <<EOF
-- require('leap').set_default_keymaps()
-- require('leap').setup {
-- --   highlight_ahead_of_time = true,
-- --   highlight_unlabeled = false,
-- --   case_sensitive = false,
-- --   -- Leaving the appropriate list empty effectively disables "smart" mode,
-- --   -- and forces auto-jump to be on or off.
-- --   safe_labels = {},
-- --   labels = {},
--   -- These keys are captured directly by the plugin at runtime.
-- --   special_keys = {
-- --     repeat_search = '<enter>',
-- --     next_match    = '<enter>',
-- --     prev_match    = '<tab>',
-- --     next_group    = '<space>',
-- --     prev_group    = '<tab>',
-- --     eol           = '<space>',
-- --   },
-- }

function leap_all_windows()
  require'leap'.leap {
    ['target-windows'] = vim.tbl_filter(
      function (win) return vim.api.nvim_win_get_config(win).focusable end,
      vim.api.nvim_tabpage_list_wins(0)
    )
  }
end

function leap_bidirectional()
  require'leap'.leap { ['target-windows'] = { vim.api.nvim_get_current_win() } }
end
EOF


nnoremap <leader>s :lua leap_bidirectional()<CR>
nnoremap gl :lua leap_all_windows()<CR>
