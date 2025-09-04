---@type LazyKeysSpec[]
local keys = {
  {
    "<leader>tw",
    function()
      require("visual-whitespace").toggle()
    end,
    mode = { "n", "v" },
    desc = "Toggle visual-whitespace",
  },
}

return keys
