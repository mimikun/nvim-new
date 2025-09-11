---@type Persistence.Config
local opts = {
  dir = vim.fn.stdpath("state") .. "/sessions/",
  ---@type 0 | 1
  need = 1,
}

return opts
