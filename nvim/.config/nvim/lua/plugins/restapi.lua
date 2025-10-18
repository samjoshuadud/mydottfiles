return {
  {
    "diepm/vim-rest-console",
    config = function()
      vim.g.vrc_auto_format_response = 1
      vim.g.vrc_response_default_content_type = "application/json"
    end,
  },
}

