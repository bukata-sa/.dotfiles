-- Save vim buffers when switch tmux tabs
vim.g.tmux_navigator_save_on_switch = 2
-- Do not 'wrap' around vim windows
vim.g.tmux_navigator_no_wrap = 1

return {
  {
    'christoomey/vim-tmux-navigator',
    cmd = {
      'TmuxNavigateLeft',
      'TmuxNavigateDown',
      'TmuxNavigateUp',
      'TmuxNavigateRight',
      'TmuxNavigatePrevious',
    },
    keys = {
      { '<c-h>', ':TmuxNavigateLeft<cr>' },
      { '<c-j>', ':TmuxNavigateDown<cr>' },
      { '<c-k>', ':TmuxNavigateUp<cr>' },
      { '<c-l>', ':TmuxNavigateRight<cr>' },
      { '<c-\\>', ':TmuxNavigatePrevious<cr>' },
    },
  },
  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    opts = {
      hijack_netrw_behavior = 'open_default',
    },
  },
}
