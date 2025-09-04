---@type LazyKeysSpec[]
local keys = {
  {
    "<leader>tr",
    function()
      require("pantran").motion_translate()
    end,
    mode = "n",
    { noremap = true, silent = true, expr = true },
  },
  {
    "<leader>trr",
    function()
      return require("pantran").motion_translate() .. "_"
    end,
    mode = "n",
    { noremap = true, silent = true, expr = true },
  },
  {
    "<leader>tr",
    function()
      require("pantran").motion_translate()
    end,
    mode = "x",
    { noremap = true, silent = true, expr = true },
  },
}

return keys
