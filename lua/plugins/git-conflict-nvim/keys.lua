---@type LazyKeysSpec[]
local keys = {
  {
    "co",
    function()
      require("git-conflict").choose("ours")
    end,
    mode = "n",
    { silent = true, desc = "Git Conflict: Choose Ours" },
  },
  {
    "ct",
    function()
      require("git-conflict").choose("theirs")
    end,
    mode = "n",
    { silent = true, desc = "Git Conflict: Choose Theirs" },
  },
  {
    "cb",
    function()
      require("git-conflict").choose("both")
    end,
    mode = "n",
    { silent = true, desc = "Git Conflict: Choose Both" },
  },
  {
    "c0",
    function()
      require("git-conflict").choose("none")
    end,
    mode = "n",
    { silent = true, desc = "Git Conflict: Choose None" },
  },
  {
    "[x",
    function()
      require("git-conflict").find_prev("ours")
    end,
    mode = "n",
    { silent = true, desc = "Git Conflict: Previous Conflict" },
  },
  {
    "]x",
    function()
      require("git-conflict").find_next("ours")
    end,
    mode = "n",
    { silent = true, desc = "Git Conflict: Next Conflict" },
  },
}

return keys
