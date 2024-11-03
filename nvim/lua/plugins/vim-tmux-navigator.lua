return {
  'christoomey/vim-tmux-navigator',
  vim.keymap.set('n', '<C-j>', ':TmuxNavigateLeft<CR>', { noremap = true, silent = true }),
  vim.keymap.set('n', '<C-l>', ':TmuxNavigateRight<CR>', { noremap = true, silent = true }),
  vim.keymap.set('n', '<C-i>', ':TmuxNavigateUp<CR>', { noremap = true, silent = true }),
  vim.keymap.set('n', '<C-k>', ':TmuxNavigateDown<CR>', { noremap = true, silent = true }),
}
