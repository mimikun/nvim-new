---@type LazyKeysSpec[]
local keys = {
  {
    "<leader>or",
    function()
      require("telescope").extensions.orgmode.refile_heading()
    end,
    mode = "n",
  },
}

return keys
