---@type LazyKeysSpec[]
local keys = {
  {
    "<C-b>",
    function()
      require("specs").show_specs()
    end,
    mode = "n",
    { noremap = true, silent = true },
  },
  {
    "n",
    function()
      require("specs").show_specs()
    end,
    mode = "n",
    { noremap = true, silent = true },
  },
  {
    "N",
    function()
      require("specs").show_specs()
    end,
    mode = "n",
    { noremap = true, silent = true },
  },
  {
    "<leader>v",
    function()
      require("specs").show_specs({ width = 97, winhl = "Search", delay_ms = 610, inc_ms = 21 })
    end,
    mode = "n",
    { noremap = true, silent = true },
  },
}

return keys
