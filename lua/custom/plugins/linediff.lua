return {
  'AndrewRadev/linediff.vim',
  event = "VeryLazy",
  init = function()
    vim.g.linediff_buffer_type = 'scratch'

    vim.cmd([[
      noremap <leader>dd :Linediff<CR>
      augroup vimrc
      autocmd User LinediffBufferReady nnoremap <buffer> gs :LinediffReset<cr>
      augroup end
    ]])
  end
}
