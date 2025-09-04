---@type table
local opts = {
  disableOnLastBuffer = false,
  killAllBuffersOnDisable = false,
  autocmds = {
    enableOnVimEnter = false,
    enableOnTabEnter = false,
    reloadOnColorSchemeChange = false,
    skipEnteringNoNeckPainBuffer = false,
  },
  buffers = {
    setNames = false,
    scratchPad = {
      enabled = false,
    },
  },
  integrations = {
    -- if a dashboard that you use isn't supported, either set `dashboard.filetype` to the expected file type, or open a pull-request with the edited list.
    dashboard = {
      enabled = false,
      -- if a dashboard that you use isn't supported, you can use this field to set a matching filetype, also don't hesitate to open a pull-request with the edited list (DASHBOARDS) found in lua/no-neck-pain/util/constants.lua.
      ---@type string[]|nil
      filetypes = nil,
    },
  },
}

return opts
