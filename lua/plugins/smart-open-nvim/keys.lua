---@type LazyKeysSpec
local keys = {
  {
    "<leader><leader>",
    function()
      require("telescope").extensions.smart_open.smart_open()
    end,
    mode = "n",
    { noremap = true, silent = true },
  },
}

return keys
