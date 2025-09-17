---@type LazyKeysSpec[]
local keys = {
  {
    "<leader>td",
    function()
      require("dap-go").debug_test()
    end,
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
}

return keys
