---@type table
local opts = {
  tabs = require("plugins.megatoggler.opts.tabs"),
  ui = require("plugins.megatoggler.opts.ui"),
  persist = true,
  persist_file = vim.fn.stdpath("state") .. "/megatoggler/state.json",
}

return opts
