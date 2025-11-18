return {
  { -- Mason for downloading mason
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },


  { -- Mason Config for Downloading Language Server
    'williamboman/mason-lspconfig.nvim',
    lazy = false,
    opts = {
      auto_install = true,
    },
  },


  { -- Communication between languange server and nvim
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      capabilities.workspace = capabilities.workspace or {}
      capabilities.workspace.didChangeWatchedFiles = { dynamicRegistration = true }

      capabilities.workspace.workspaceFolders = true

      local lspconfig = require("lspconfig")
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
      -- Lua Language Server
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
        settings = {
          Lua = {
            runtime = {
              version = "LuaJIT",
            },
            diagnostics = {
              globals = { "vim" },
            },
            workspace = {
              library = vim.api.nvim_get_runtime_file("", true),
            },
            telemetry = {
              enable = false,
            },
          },
        },
      })

      -- C# Language Server
      lspconfig.csharp_ls.setup({
        capabilities = capabilities
      })

      -- Python Language Server
      lspconfig.pylsp.setup({
        capabilities = capabilities,
        settings = {
          pylsp = {
            plugins = {
              pylint = { enabled = true },
              pyflakes = { enabled = false },
              yapf = { enabled = true },
            },
          },
        },
      })

      -- Tailwind CSS Language Server
      lspconfig.tailwindcss.setup({
        capabilities = capabilities
      })

      -- PHP Language Server
      lspconfig.phpactor.setup({
        capabilities = capabilities
      })

      -- JavaScript
      lspconfig.ast_grep.setup({
        capabilities = capabilities
      })
      lspconfig.ts_ls.setup({
        capabilities = capabilities
      })
      -- Add more language servers as needed
    end,
  }
}
