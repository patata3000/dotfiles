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

-- Searching in all windows (including the current one) on the tab page.
function leap_all_windows()
  local focusable_windows_on_tabpage = vim.tbl_filter(
    function (win) return vim.api.nvim_win_get_config(win).focusable end,
    vim.api.nvim_tabpage_list_wins(0)
  )
  require'leap'.leap { target_windows = focusable_windows_on_tabpage }
end

-- Bidirectional search in the current window is just a specific case of the
-- multi-window mode.
function leap_current_window()
  local current_window = vim.api.nvim_get_current_win()
  require'leap'.leap { target_windows = { current_window } }
end

EOF

nnoremap <leader>s :lua leap_current_window()<CR>
nnoremap gl :lua leap_all_windows()<CR>
