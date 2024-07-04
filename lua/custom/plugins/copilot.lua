-- File: lua/custom/plugins/copilot.lua

return {
  'github/copilot.vim',
  config = function()
    -- vim.keymap.set('i', '<M-j>', 'copilot#Accept("\\<CR>")', {
    --   expr = true,
    --   replace_keycodes = false,
    -- })
    -- vim.g.copilot_no_tab_map = true
  end,
}
