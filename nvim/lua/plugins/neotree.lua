-- lua/plugins/neo-tree.lua

return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },

    config = function()
      vim.keymap.set('n', '<C-n>', function()
        for _, win in ipairs(vim.api.nvim_list_wins()) do
          local buf = vim.api.nvim_win_get_buf(win)
          local buf_ft = vim.api.nvim_buf_get_option(buf, 'filetype')
          if buf_ft == 'neo-tree' then
            vim.cmd("Neotree close")
            return
          end
        end
        vim.cmd("Neotree")
      end, {})
    end
  }
}

