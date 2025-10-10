---@type LazyKeysSpec[]
local keys = {
  {
    "<Tab>",
    function()
      require("supertab").trigger("<Tab>")
    end,
    mode = "i",
    { noremap = true, silent = true, desc = "Supertab" },
  },
}

return keys
