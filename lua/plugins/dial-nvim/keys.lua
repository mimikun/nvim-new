---@type LazyKeysSpec[]
local keys = {
  -- increment
  {
    "<C-a>",
    function()
      require("dial.map").manipulate("increment", "normal")
    end,
    mode = "n",
  },
  {
    "<C-a>",
    function()
      require("dial.map").manipulate("increment", "visual")
    end,
    mode = "x",
  },
  {
    "<C-a>",
    function()
      require("dial.map").manipulate("increment", "visual", "only_in_visual")
    end,
    mode = "x",
  },
  {
    "g<C-a>",
    function()
      require("dial.map").manipulate("increment", "gnormal")
    end,
    mode = "n",
  },
  {
    "g<C-a>",
    function()
      require("dial.map").manipulate("increment", "gvisual")
    end,
    mode = "x",
  },
  -- decrement
  {
    "<C-x>",
    function()
      require("dial.map").manipulate("decrement", "normal")
    end,
    mode = "n",
  },
  {
    "<C-x>",
    function()
      require("dial.map").manipulate("decrement", "visual")
    end,
    mode = "x",
  },
  {
    "<C-x>",
    function()
      require("dial.map").manipulate("decrement", "visual", "only_in_visual")
    end,
    mode = "x",
  },
  {
    "g<C-x>",
    function()
      require("dial.map").manipulate("decrement", "gnormal")
    end,
    mode = "n",
  },
  {
    "g<C-x>",
    function()
      require("dial.map").manipulate("decrement", "gvisual")
    end,
    mode = "x",
  },
  -- other
  {
    "<Plug>(dial-increment)",
    function()
      require("dial.map").inc_normal()
    end,
    mode = "n",
  },
  {
    "<Plug>(dial-g-increment)",
    function()
      require("dial.map").inc_gnormal()
    end,
    mode = "n",
  },
  {
    "<Plug>(dial-decrement)",
    function()
      require("dial.map").dec_normal()
    end,
    mode = "n",
  },
  {
    "<Plug>(dial-g-decrement)",
    function()
      require("dial.map").dec_gnormal()
    end,
    mode = "n",
  },
  --[[
  {
    "<Plug>(dial-increment)",
    function()
      --require("dial.map").inc_visual() .. "gv"
    end,
    mode = "v",
  },
  {
    "<Plug>(dial-g-increment)",
    function()
      --require("dial.map").inc_gvisual() .. "gv"
    end,
    mode = "v",
  },
  {
    "<Plug>(dial-decrement)",
    function()
      --require("dial.map").dec_visual() .. "gv"
    end,
    mode = "v",
  },
  {
    "<Plug>(dial-g-decrement)",
    function()
      --require("dial.map").dec_gvisual() .. "gv"
    end,
    mode = "v",
  },
  {
    "<Leader>a",
    function()
      require("dial.map").inc_normal("mygroup")
    end,
    mode = "n",
  },
  ]]
}

return keys
