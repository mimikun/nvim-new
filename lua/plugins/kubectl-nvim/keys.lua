---@type LazyKeysSpec[]
local keys = {
  {
    "<leader>k",
    function()
      require("kubectl").toggle()
    end,
    mode = "n",
    { noremap = true, silent = true },
  },
}

return keys
