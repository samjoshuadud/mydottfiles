return {
  'christoomey/vim-tmux-navigator',
  vim.keymap.set('n', '<C-j>', ':TmuxNavigateLeft<CR>', { noremap = true, silent = true }),
  vim.keymap.set('n', '<C-k>', ':TmuxNavigateRight<CR>', { noremap = true, silent = true }),
  vim.keymap.set('n', '<C-l>', ':TmuxNavigateUp<CR>', { noremap = true, silent = true }),
  vim.keymap.set('n', '<C-h>', ':TmuxNavigateDown<CR>', { noremap = true, silent = true }),
}
