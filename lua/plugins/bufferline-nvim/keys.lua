---@type LazyKeysSpec[]
local keys = {
  -- NOTE: SEP
  {
    "<leader>b1",
    function()
      require("bufferline").go_to(1, true)
    end,
    mode = "n",
    desc = "Buffer Go To 1",
    { silent = true },
  },
  {
    "<leader>b2",
    function()
      require("bufferline").go_to(2, true)
    end,
    mode = "n",
    desc = "Buffer Go To 2",
    { silent = true },
  },
  {
    "<leader>b3",
    function()
      require("bufferline").go_to(3, true)
    end,
    mode = "n",
    desc = "Buffer Go To 3",
    { silent = true },
  },
  {
    "<leader>b4",
    function()
      require("bufferline").go_to(4, true)
    end,
    mode = "n",
    desc = "Buffer Go To 4",
    { silent = true },
  },
  {
    "<leader>b5",
    function()
      require("bufferline").go_to(5, true)
    end,
    mode = "n",
    desc = "Buffer Go To 5",
    { silent = true },
  },
  {
    "<leader>b6",
    function()
      require("bufferline").go_to(6, true)
    end,
    mode = "n",
    desc = "Buffer Go To 6",
    { silent = true },
  },
  {
    "<leader>b7",
    function()
      require("bufferline").go_to(7, true)
    end,
    mode = "n",
    desc = "Buffer Go To 7",
    { silent = true },
  },
  {
    "<leader>b8",
    function()
      require("bufferline").go_to(8, true)
    end,
    mode = "n",
    desc = "Buffer Go To 8",
    { silent = true },
  },
  {
    "<leader>b9",
    function()
      require("bufferline").go_to(9, true)
    end,
    mode = "n",
    desc = "Buffer Go To 9",
    { silent = true },
  },
  {
    "<leader>b$",
    function()
      require("bufferline").go_to(-1, true)
    end,
    mode = "n",
    desc = "Buffer Go To Last",
    { silent = true },
  },
  -- NOTE: SEP
  {
    "<leader>bn",
    function()
      vim.cmd("BufferLineCycleNext")
    end,
    mode = "n",
    desc = "Buffer Go To Next",
    { silent = true },
  },
  {
    "<leader>bN",
    function()
      vim.cmd("BufferLineCyclePrev")
    end,
    mode = "n",
    desc = "Buffer Go To Previous",
    { silent = true },
  },
  {
    "<leader>bH",
    function()
      require("bufferline").move_to(1)
    end,
    mode = "n",
    desc = "",
    { silent = true },
  },
  {
    "<leader>bL",
    function()
      require("bufferline").move_to(-1)
    end,
    mode = "n",
    desc = "",
    { silent = true },
  },
  {
    "<leader>bgb",
    function()
      vim.cmd("BufferLinePick")
    end,
    mode = "n",
    desc = "",
    { silent = true },
  },
  {
    "<leader>bgD",
    function()
      vim.cmd("BufferLinePickClose")
    end,
    mode = "n",
    desc = "",
    { silent = true },
  },
  {
    "<leader>bse",
    function()
      require("bufferline").sort_by("extension")
    end,
    mode = "n",
    desc = "Buffer Sort By Extension",
    { silent = true },
  },
  {
    "<leader>bsd",
    function()
      require("bufferline").sort_by("directory")
    end,
    mode = "n",
    desc = "Buffer Sort By Directory",
    { silent = true },
  },
  {
    "<leader>bst",
    function()
      require("bufferline").sort_by("tabs")
    end,
    mode = "n",
    desc = "Buffer Sort By Tabs",
    { silent = true },
  },
}

return keys
