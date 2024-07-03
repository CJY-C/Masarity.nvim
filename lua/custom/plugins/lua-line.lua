return {
  -- Set lualine as statusline
  'nvim-lualine/lualine.nvim',
  -- See `:help lualine.txt`
  lazy = false,
  opts = {
    options = {
      icons_enabled = true,
      theme = 'auto',
      component_separators = '|',
      section_separators = '',
    },
  },
  -- config = function()
  --   require("lualine").setup({
  --     options = {
  --       theme = "visual_studio_code",
  --       icons_enabled = true,
  --       component_separators = { left = "", right = "" },
  --       section_separators = { left = "", right = "" },
  --       disabled_filetypes = {},
  --       globalstatus = true,
  --       refresh = {
  --         statusline = 100,
  --       },
  --     },
  --     sections = require("visual_studio_code").get_lualine_sections(),
  --   })
  -- end
}
