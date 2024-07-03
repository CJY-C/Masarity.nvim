return {
  'sainnhe/gruvbox-material',
  init = function()
    -- Set contrast.
    -- This configuration option should be placed before `colorscheme gruvbox-material`.
    -- Available values: 'hard', 'medium'(default), 'soft'
    vim.g.gruvbox_material_background = 'medium'
    -- For better performance
    vim.g.gruvbox_material_better_performance = 1
  end,
  config = function()
    vim.cmd([[
        " Important!!
        if has('termguicolors')
          set termguicolors
        endif

        " For dark version.
        set background=dark

        " " For light version.
        " set background=light

        colorscheme gruvbox-material
    ]])
  end
}
