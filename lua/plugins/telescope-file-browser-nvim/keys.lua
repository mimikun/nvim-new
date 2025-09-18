---@type LazyKeysSpec[]
local keys = {
  {
    "<leader>Fb",
    function()
      require("telescope").extensions.file_browser.file_browser()
    end,
    mode = "n",
    desc = "",
    { silent = true },
  },
}

return keys
