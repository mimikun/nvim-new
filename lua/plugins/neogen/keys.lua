---@type LazyKeysSpec[]
local keys = {
  {
    "<Leader>nf",
    function()
      require("neogen").generate()
    end,
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    "<Leader>nc",
    function()
      require("neogen").generate({ type = "class" })
    end,
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
}

return keys
