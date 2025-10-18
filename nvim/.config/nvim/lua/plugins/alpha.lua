return {  
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Trial start date (adjust this date to the day you started the trial)
    local start_date = os.time({year=2024, month=11, day=1})
    local trial_period = 30 -- days

    -- Calculate days remaining
    local current_date = os.time()
    local days_remaining = trial_period - math.floor(os.difftime(current_date, start_date) / (24 * 60 * 60))

    -- Set dashboard header and buttons
    dashboard.section.header.val = {
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                     ]],
      [[       ████ ██████           █████      ██                     ]],
      [[      ███████████             █████                             ]],
      [[      █████████ ███████████████████ ███   ███████████   ]],
      [[     █████████  ███    █████████████ █████ ██████████████   ]],
      [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
      [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
      [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
      [[                                                                       ]],
      [[                                                                       ]],
    }

    dashboard.section.buttons.val = {
      dashboard.button("n", "  New file", ":ene <BAR> startinsert <CR>"),
      dashboard.button("f", "  Find file", ":Telescope find_files<CR>"),
      dashboard.button("r", "🗄️  Recently Modified", ":Telescope oldfiles<CR>"),
      dashboard.button("k", "  Keybindings Guide nvim & tmux", ":e ~/.config/nvim/lua/keybinds.txt<CR>"),
      dashboard.button("q", "  Quit", ":qa<CR>"),
    }

    -- Set the highlight for all buttons
    for _, button in ipairs(dashboard.section.buttons.val) do
      button.opts.hl = "Statement"
    end

    -- Highlight keybinding guide button specifically
    dashboard.section.buttons.val[5].opts.hl = "WarningMsg"

    alpha.setup(dashboard.opts)
  end,
}

