---@type LazyKeysSpec[]
local keys = {
  {
    "<leader>dn",
    function()
      require("dap-python").test_method()
    end,
    mode = "n",
    { noremap = true, silent = true },
  },
  {
    "<leader>df",
    function()
      require("dap-python").test_class()
    end,
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    "<leader>ds",
    function()
      vim.cmd([[<ESC>:lua require('dap-python').debug_selection()<CR>]])
    end,
    mode = "v",
    desc = "",
    { noremap = true, silent = true },
  },
}

return keys
