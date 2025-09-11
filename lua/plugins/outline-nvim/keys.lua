---@type LazyKeysSpec[]
local keys = {
  {
    "<leader>o",
    function()
      require("outline").toggle()
    end,
    desc = "Toggle outline",
  },
}

return keys
