---@type LazyKeysSpec[]
local keys = {
  {
    "<leader>gl",
    function()
      require("gitgraph").draw({}, { all = true, max_count = 5000 })
    end,
    desc = "GitGraph - Draw",
  },
}

return keys
