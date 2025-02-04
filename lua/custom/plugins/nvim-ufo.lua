return {
  'kevinhwang91/nvim-ufo',
  dependencies = { 'kevinhwang91/promise-async' },
  event = 'BufRead',
  keys = {
    {
      'zR',
      function()
        require('ufo').openAllFolds()
      end,
    },
    {
      'zM',
      function()
        require('ufo').closeAllFolds()
      end,
    },
    {
      'K',
      function()
        local winid = require('ufo').peekFoldedLinesUnderCursor()
        if not winid then
          vim.lsp.buf.hover()
        end
      end,
    },
  },
  config = function()
    vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
    vim.o.foldcolumn = '1'
    vim.o.foldlevel = 99
    vim.o.foldlevelstart = 99
    vim.o.foldenable = true
    require('ufo').setup {
      close_fold_kinds_for_ft = {
        default = { 'imports', 'comment' },
        -- json = {'array', },
        c = { 'comment' },
      },
    }
    vim.api.nvim_create_autocmd('FileType', {
      pattern = { 'nvcheatsheet', 'neo-tree' },
      callback = function()
        require('ufo').detach()
        vim.opt_local.foldenable = false
        vim.wo.foldcolumn = '0'
      end,
    })
  end,
}
