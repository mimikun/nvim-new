---@type LazyKeysSpec[]
local keys = {
  -- movement
  {
    "<C-k>",
    function()
      vim.cmd("Treewalker Up")
    end,
    mode = { "n", "v" },
    { silent = true },
    desc = "Treewalker Up movement",
  },
  {
    "<C-j>",
    function()
      vim.cmd("Treewalker Down")
    end,
    mode = { "n", "v" },
    { silent = true },
    desc = "Treewalker Down movement",
  },
  {
    "<C-h>",
    function()
      vim.cmd("Treewalker Left")
    end,
    mode = { "n", "v" },
    { silent = true },
    desc = "Treewalker Left movement",
  },
  {
    "<C-l>",
    function()
      vim.cmd("Treewalker Right")
    end,
    mode = { "n", "v" },
    { silent = true },
    desc = "Treewalker Right movement",
  },
  -- swapping
  {
    "<C-S-k>",
    function()
      vim.cmd("Treewalker SwapUp")
    end,
    mode = "n",
    { silent = true },
    desc = "Treewalker Up swapping",
  },
  {
    "<C-S-j>",
    function()
      vim.cmd("Treewalker SwapDown")
    end,
    { silent = true },
    mode = "n",
    desc = "Treewalker Down swapping",
  },
  {
    "<C-S-h>",
    function()
      vim.cmd("Treewalker SwapLeft")
    end,
    mode = "n",
    { silent = true },
    desc = "Treewalker Left swapping",
  },
  {
    "<C-S-l>",
    function()
      vim.cmd("Treewalker SwapRight")
    end,
    mode = "n",
    { silent = true },
    desc = "Treewalker Right swapping",
  },
}

return keys
