---@type LazyKeysSpec[]
local keys = {
  {
    "[g",
    function()
      require("headhunter").prev_conflict()
    end,
    mode = "n",
    { noremap = true, silent = true, desc = "Previous Git conflict" },
  },
  {
    "]g",
    function()
      require("headhunter").next_conflict()
    end,
    mode = "n",
    { noremap = true, silent = true, desc = "Next Git conflict" },
  },
  {
    "<leader>gh",
    function()
      require("headhunter").take_head()
    end,
    mode = "n",
    { noremap = true, silent = true, desc = "Take HEAD in conflict" },
  },
  {
    "<leader>go",
    function()
      require("headhunter").take_origin()
    end,
    mode = "n",
    { noremap = true, silent = true, desc = "Take ORIGIN in conflict" },
  },
  {
    "<leader>gb",
    function()
      require("headhunter").take_both()
    end,
    mode = "n",
    { noremap = true, silent = true, desc = "Take BOTH in conflict" },
  },
  {
    "<leader>gq",
    function()
      require("headhunter").populate_quickfix()
    end,
    mode = "n",
    { noremap = true, silent = true, desc = "List Git conflicts in quickfix" },
  },
}

return keys
