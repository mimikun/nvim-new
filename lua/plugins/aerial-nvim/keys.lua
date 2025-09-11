---@type LazyKeysSpec[]
local keys = {
  {
    "<leader>a",
    function()
      require("aerial").toggle()
    end,
    mode = "n",
    desc = "Open or close the aerial window",
  },
}

return keys
