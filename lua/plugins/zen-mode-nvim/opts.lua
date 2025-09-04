---@type ZenOptions
local opts = {
  border = "none",
  zindex = 40,
  window = {
    options = {
      -- disable signcolumn
      --signcolumn = "no",
      -- disable number column
      --number = false,
      -- disable relative numbers
      --relativenumber = false,
      -- disable cursorline
      --cursorline = false,
      -- disable cursor column
      --cursorcolumn = false,
      -- disable fold column
      --foldcolumn = "0",
      -- disable whitespace characters
      --list = false,
    },
  },
  plugins = {
    options = {
      ruler = false,
      showcmd = false,
    },
    gitsigns = {
      enabled = false,
    },
    tmux = {
      enabled = false,
    },
    diagnostics = {
      enabled = false,
    },
    todo = {
      enabled = false,
    },
    wezterm = {
      enabled = false,
      font = "+4",
    },
  },
}

return opts
