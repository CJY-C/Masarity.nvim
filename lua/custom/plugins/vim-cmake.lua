return {
  'cdelledonne/vim-cmake',
  init = function()
    vim.g.cmake_build_options = {'-j5'}
    vim.g.cmake_test_options = {''}
    -- vim.g.cmake_test_options = {'./build/Debug/src'}
    vim.g.cmake_build_dir_location = './build'
    -- vim.g.cmake_root_markers = {'.git', '.svn'}
  end,
  event = "VeryLazy",
}
