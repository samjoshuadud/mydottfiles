-- lua/plugins/lualine.lua

return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {
        options = {
          theme = 'dracula', -- Set the theme to Dracula
        },
      }
    end
  }
}

