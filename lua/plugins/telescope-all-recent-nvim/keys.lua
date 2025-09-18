---@type LazyKeysSpec[]
local keys = {
  {
    "<leader>F",
    function()
      require("telescope").builtins.find_files()
    end,
    mode = "n",
    desc = "",
    { silent = true },
  },
}

return keys
