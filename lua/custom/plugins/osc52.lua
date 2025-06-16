return {
  'ojroques/nvim-osc52',
  config = function()
    require('osc52').setup {
      max_length = 0, -- use for tmux
      silent = false,
      trim = false,
    }
    vim.keymap.set('v', 'y', function()
      vim.api.nvim_feedkeys('y', 'n', false)
      require('osc52').copy_visual()
    end, { desc = 'Copy to clipboard' })
  end,
}
