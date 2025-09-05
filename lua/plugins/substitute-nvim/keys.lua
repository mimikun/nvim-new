---@type LazyKeysSpec[]
local keys = {
  {
    "s",
    function()
      require("substitute").operator()
    end,
    mode = "n",
    { noremap = true },
  },
  {
    "ss",
    function()
      require("substitute").line()
    end,
    mode = "n",
    { noremap = true },
  },
  {
    "S",
    function()
      require("substitute").eol()
    end,
    mode = "n",
    { noremap = true },
  },
  {
    "s",
    function()
      require("substitute").visual()
    end,
    mode = "x",
    { noremap = true },
  },
  {
    "<leader>s",
    function()
      require("substitute.range").operator()
    end,
    mode = "n",
    { noremap = true },
  },
  {
    "<leader>s",
    function()
      require("substitute.range").visual()
    end,
    mode = "x",
    { noremap = true },
  },
  {
    "<leader>ss",
    function()
      require("substitute.range").word()
    end,
    mode = "n",
    { noremap = true },
  },
  {
    "<leader>S",
    function()
      require("substitute.range").operator({ prefix = "S" })
    end,
    mode = "n",
    { noremap = true },
  },
  {
    "sx",
    function()
      require("substitute.exchange").operator()
    end,
    mode = "n",
    { noremap = true },
  },
  {
    "sxx",
    function()
      require("substitute.exchange").line()
    end,
    mode = "n",
    { noremap = true },
  },
  {
    "X",
    function()
      require("substitute.exchange").visual()
    end,
    mode = "x",
    { noremap = true },
  },
  {
    "sxc",
    function()
      require("substitute.exchange").cancel()
    end,
    mode = "n",
    { noremap = true },
  },
}

return keys
