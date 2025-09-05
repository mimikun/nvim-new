---@type table
local opts = {
  on_substitute = function()
    require("yanky.integration").substitute()
  end,
  exchange = {
    motion = nil,
  },
}

return opts
