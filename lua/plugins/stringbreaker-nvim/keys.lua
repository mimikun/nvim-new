---@type LazyKeysSpec[]
local keys = {
  {
    "<space>fes",
    function()
      require("string-breaker").break_string()
    end,
    mode = { "n", "v" },
    desc = "Break string for editing",
    { silent = true },
  },
  {
    "<space>fep",
    function()
      require("string-breaker").preview()
    end,
    mode = { "n", "v" },
    desc = "Preview string content",
    { silent = true },
  },
  {
    "<space>fec",
    function()
      require("string-breaker").cancel()
    end,
    mode = "n",
    desc = "Cancel string editing",
    { silent = true },
  },
}

return keys
