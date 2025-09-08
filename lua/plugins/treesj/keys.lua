---@type LazyKeysSpec[]
local keys = {
  {
    "<leader>m",
    function()
      require("treesj").toggle()
    end,
    mode = "n",
  },
  {
    "<leader>M",
    function()
      require("treesj").toggle({ split = { recursive = true } })
    end,
    mode = "n",
  },
  {
    "<leader>j",
    mode = "n",
  },
  {
    "<leader>s",
    mode = "n",
  },
}

return keys
