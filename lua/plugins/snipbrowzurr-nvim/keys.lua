---@type LazyKeysSpec[]
local keys = {
  {
    "<leader>ss",
    function()
      require("snipbrowzurr").show_current()
    end,
    mode = "n",
    { desc = "Show snippets for current file", silent = true },
  },
}

return keys
