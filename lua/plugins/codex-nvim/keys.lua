---@type LazyKeysSpec[]
local keys = {
  {
    "<leader>cc",
    function()
      require("codex").toggle()
    end,
    desc = "Toggle Codex popup",
    { silent = true },
  },
}

return keys
