---@type LazyKeysSpec[]
local keys = {
  {
    "K",
    function()
      require("hover").open()
    end,
    mode = "n",
    desc = "hover.nvim (open)",
    { silent = true },
  },
  {
    "gK",
    function()
      require("hover").enter()
    end,
    mode = "n",
    desc = "hover.nvim (enter)",
    { silent = true },
  },
  {
    "<C-p>",
    function()
      require("hover").hover_switch("previous")
    end,
    mode = "n",
    desc = "hover.nvim (previous source)",
    { silent = true },
  },
  {
    "<C-n>",
    function()
      require("hover").hover_switch("next")
    end,
    mode = "n",
    desc = "hover.nvim (next source)",
    { silent = true },
  },
  {
    "<MouseMove>",
    function()
      require("hover").mouse()
    end,
    mode = "n",
    desc = "hover.nvim (mouse)",
    { silent = true },
  },
}

return keys
