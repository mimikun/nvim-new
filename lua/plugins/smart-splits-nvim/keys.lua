---@type LazyKeysSpec[]
local keys = {
  -- NOTE: resizing splits
  {
    "<A-h>",
    function()
      require("smart-splits").resize_left()
    end,
    mode = "n",
    desc = "",
    { silent = true },
  },
  {
    "<A-j>",
    function()
      require("smart-splits").resize_down()
    end,
    mode = "n",
    desc = "",
    { silent = true },
  },
  {
    "<A-k>",
    function()
      require("smart-splits").resize_up()
    end,
    mode = "n",
    desc = "",
    { silent = true },
  },
  {
    "<A-l>",
    function()
      require("smart-splits").resize_right()
    end,
    mode = "n",
    desc = "",
    { silent = true },
  },
  -- NOTE: moving between splits
  {
    "<C-h>",
    function()
      require("smart-splits").move_cursor_left()
    end,
    mode = "n",
    desc = "",
    { silent = true },
  },
  {
    "<C-j>",
    function()
      require("smart-splits").move_cursor_down()
    end,
    mode = "n",
    desc = "",
    { silent = true },
  },
  {
    "<C-k>",
    function()
      require("smart-splits").move_cursor_up()
    end,
    mode = "n",
    desc = "",
    { silent = true },
  },
  {
    "<C-l>",
    function()
      require("smart-splits").move_cursor_right()
    end,
    mode = "n",
    desc = "",
    { silent = true },
  },
  {
    "<C-\\>",
    function()
      require("smart-splits").move_cursor_previous()
    end,
    mode = "n",
    desc = "",
    { silent = true },
  },
  -- NOTE: swapping buffers between windows
  {
    "<leader><leader>h",
    function()
      require("smart-splits").swap_buf_left()
    end,
    mode = "n",
    desc = "",
    { silent = true },
  },
  {
    "<leader><leader>j",
    function()
      require("smart-splits").swap_buf_down()
    end,
    mode = "n",
    desc = "",
    { silent = true },
  },
  {
    "<leader><leader>k",
    function()
      require("smart-splits").swap_buf_up()
    end,
    mode = "n",
    desc = "",
    { silent = true },
  },
  {
    "<leader><leader>l",
    function()
      require("smart-splits").swap_buf_right()
    end,
    mode = "n",
    desc = "",
    { silent = true },
  },
}

return keys
