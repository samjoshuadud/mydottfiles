-- vim options
vim.cmd("set expandtab")        -- Use spaces instead of tabs
vim.cmd("set tabstop=2")        -- Number of spaces that a <Tab> counts for
vim.cmd("set softtabstop=2")    -- Number of spaces that a <Tab> counts for while editing
vim.cmd("set shiftwidth=2")      -- Number of spaces to use for each step of (auto)indent

-- Set leader key to space
vim.g.mapleader = ' '

-- Enable line numbers
vim.wo.number = true           -- Enable absolute line numbers
-- vim.wo.relativenumber = true   -- Enable relative line numbers

-- Importing plugins
require("config.lazy")           -- Lazy loading config
require("plugins.colorscheme")   -- Colorscheme setup
require("plugins.telescope")      -- Telescope setup
require("plugins.treesitter")     -- Treesitter setup
require("plugins.neotree")        -- Neo-tree setup
require("plugins.lualine")        -- Lualine setup
require("plugins.lsp-config")     -- LSP configuration
require("plugins.none-ls")        -- None LSP plugin configuration
-- Switch to different window
vim.keymap.set('n', '<C-Right>', '<C-w>l', { noremap = true, silent = true })
vim.keymap.set('n', '<C-Left>', '<C-w>h', { noremap = true, silent = true })
vim.keymap.set('n', '<C-Up>', '<C-w>k', { noremap = true, silent = true })
vim.keymap.set('n', '<C-Down>', '<C-w>j', { noremap = true, silent = true })

-- Remove ~ in nvim
vim.opt.fillchars = { eob = ' ' }  -- Replace empty lines with space

-- Shift + H for showing hidden files
vim.cmd("colorscheme mountain")
vim.g.enable_mountain_statusline = 1

-- Buffer management key mappings
vim.keymap.set('n', '<C-A-Right>', ':BufferNext<CR>', { noremap = true, silent = true })  -- Go to the next buffer
vim.keymap.set('n', '<C-A-Left>', ':BufferPrevious<CR>', { noremap = true, silent = true }) -- Go to the previous buffer
vim.keymap.set('n', '<C-A-BS>', ':BufferClose<CR>', { noremap = true, silent = true })      -- Close the current buffer

vim.api.nvim_set_keymap('n', '<leader>ac', ':lua toggle_autocompletion()<CR>', { noremap = true, silent = true })

-- should we add auto save? 
--

