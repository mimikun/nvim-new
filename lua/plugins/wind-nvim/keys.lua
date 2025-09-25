---@type LazyKeysSpec[]
local keys = {
  -- Window keymaps
  {
    "<leader>1",
    function()
      require("wind.windows").focus_or_create_window(1, "vsplit")
    end,
    mode = { "n", "v" },
    { desc = "Focus or create horizontal window 1", noremap = true, silent = true },
  },
  {
    "<leader>v1",
    function()
      require("wind.windows").focus_or_create_window(1, "split")
    end,
    mode = { "n", "v" },
    { desc = "Focus or create vertical window 1", noremap = true, silent = true },
  },
  {
    "<leader>x1",
    function()
      require("wind.windows").swap_window(1)
    end,
    mode = { "n", "v" },
    { desc = "Swap current window with window 1", noremap = true, silent = true },
  },
  {
    "<leader>q1",
    function()
      require("wind.windows").operate_on_window(1, "q!")
    end,
    mode = { "n", "v" },
    { desc = "Close window 1", noremap = true, silent = true },
  },
  {
    "<leader>z1",
    function()
      require("wind.windows").operate_on_window(1, "wq!")
    end,
    mode = { "n", "v" },
    { desc = "Close window 1 and swap", noremap = true, silent = true },
  },

  {
    "<leader>2",
    function()
      require("wind.windows").focus_or_create_window(2, "vsplit")
    end,
    mode = { "n", "v" },
    { desc = "Focus or create horizontal window 2", noremap = true, silent = true },
  },
  {
    "<leader>v2",
    function()
      require("wind.windows").focus_or_create_window(2, "split")
    end,
    mode = { "n", "v" },
    { desc = "Focus or create vertical window 2", noremap = true, silent = true },
  },
  {
    "<leader>x2",
    function()
      require("wind.windows").swap_window(2)
    end,
    mode = { "n", "v" },
    { desc = "Swap current window with window 2", noremap = true, silent = true },
  },
  {
    "<leader>q2",
    function()
      require("wind.windows").operate_on_window(2, "q!")
    end,
    mode = { "n", "v" },
    { desc = "Close window 2", noremap = true, silent = true },
  },
  {
    "<leader>z2",
    function()
      require("wind.windows").operate_on_window(2, "wq!")
    end,
    mode = { "n", "v" },
    { desc = "Close window 2 and swap", noremap = true, silent = true },
  },

  {
    "<leader>3",
    function()
      require("wind.windows").focus_or_create_window(3, "vsplit")
    end,
    mode = { "n", "v" },
    { desc = "Focus or create horizontal window 3", noremap = true, silent = true },
  },
  {
    "<leader>v3",
    function()
      require("wind.windows").focus_or_create_window(3, "split")
    end,
    mode = { "n", "v" },
    { desc = "Focus or create vertical window 3", noremap = true, silent = true },
  },
  {
    "<leader>x3",
    function()
      require("wind.windows").swap_window(3)
    end,
    mode = { "n", "v" },
    { desc = "Swap current window with window 3", noremap = true, silent = true },
  },
  {
    "<leader>q3",
    function()
      require("wind.windows").operate_on_window(3, "q!")
    end,
    mode = { "n", "v" },
    { desc = "Close window 3", noremap = true, silent = true },
  },
  {
    "<leader>z3",
    function()
      require("wind.windows").operate_on_window(3, "wq!")
    end,
    mode = { "n", "v" },
    { desc = "Close window 3 and swap", noremap = true, silent = true },
  },

  {
    "<leader>4",
    function()
      require("wind.windows").focus_or_create_window(4, "vsplit")
    end,
    mode = { "n", "v" },
    { desc = "Focus or create horizontal window 4", noremap = true, silent = true },
  },
  {
    "<leader>v4",
    function()
      require("wind.windows").focus_or_create_window(4, "split")
    end,
    mode = { "n", "v" },
    { desc = "Focus or create vertical window 4", noremap = true, silent = true },
  },
  {
    "<leader>x4",
    function()
      require("wind.windows").swap_window(4)
    end,
    mode = { "n", "v" },
    { desc = "Swap current window with window 4", noremap = true, silent = true },
  },
  {
    "<leader>q4",
    function()
      require("wind.windows").operate_on_window(4, "q!")
    end,
    mode = { "n", "v" },
    { desc = "Close window 4", noremap = true, silent = true },
  },
  {
    "<leader>z4",
    function()
      require("wind.windows").operate_on_window(4, "wq!")
    end,
    mode = { "n", "v" },
    { desc = "Close window 4 and swap", noremap = true, silent = true },
  },

  {
    "<leader>5",
    function()
      require("wind.windows").focus_or_create_window(5, "vsplit")
    end,
    mode = { "n", "v" },
    { desc = "Focus or create horizontal window 5", noremap = true, silent = true },
  },
  {
    "<leader>v5",
    function()
      require("wind.windows").focus_or_create_window(5, "split")
    end,
    mode = { "n", "v" },
    { desc = "Focus or create vertical window 5", noremap = true, silent = true },
  },
  {
    "<leader>x5",
    function()
      require("wind.windows").swap_window(5)
    end,
    mode = { "n", "v" },
    { desc = "Swap current window with window 5", noremap = true, silent = true },
  },
  {
    "<leader>q5",
    function()
      require("wind.windows").operate_on_window(5, "q!")
    end,
    mode = { "n", "v" },
    { desc = "Close window 5", noremap = true, silent = true },
  },
  {
    "<leader>z5",
    function()
      require("wind.windows").operate_on_window(5, "wq!")
    end,
    mode = { "n", "v" },
    { desc = "Close window 5 and swap", noremap = true, silent = true },
  },

  {
    "<leader>6",
    function()
      require("wind.windows").focus_or_create_window(6, "vsplit")
    end,
    mode = { "n", "v" },
    { desc = "Focus or create horizontal window 6", noremap = true, silent = true },
  },
  {
    "<leader>v6",
    function()
      require("wind.windows").focus_or_create_window(6, "split")
    end,
    mode = { "n", "v" },
    { desc = "Focus or create vertical window 6", noremap = true, silent = true },
  },
  {
    "<leader>x6",
    function()
      require("wind.windows").swap_window(6)
    end,
    mode = { "n", "v" },
    { desc = "Swap current window with window 6", noremap = true, silent = true },
  },
  {
    "<leader>q6",
    function()
      require("wind.windows").operate_on_window(6, "q!")
    end,
    mode = { "n", "v" },
    { desc = "Close window 6", noremap = true, silent = true },
  },
  {
    "<leader>z6",
    function()
      require("wind.windows").operate_on_window(6, "wq!")
    end,
    mode = { "n", "v" },
    { desc = "Close window 6 and swap", noremap = true, silent = true },
  },

  {
    "<leader>7",
    function()
      require("wind.windows").focus_or_create_window(7, "vsplit")
    end,
    mode = { "n", "v" },
    { desc = "Focus or create horizontal window 7", noremap = true, silent = true },
  },
  {
    "<leader>v7",
    function()
      require("wind.windows").focus_or_create_window(7, "split")
    end,
    mode = { "n", "v" },
    { desc = "Focus or create vertical window 7", noremap = true, silent = true },
  },
  {
    "<leader>x7",
    function()
      require("wind.windows").swap_window(7)
    end,
    mode = { "n", "v" },
    { desc = "Swap current window with window 7", noremap = true, silent = true },
  },
  {
    "<leader>q7",
    function()
      require("wind.windows").operate_on_window(7, "q!")
    end,
    mode = { "n", "v" },
    { desc = "Close window 7", noremap = true, silent = true },
  },
  {
    "<leader>z7",
    function()
      require("wind.windows").operate_on_window(7, "wq!")
    end,
    mode = { "n", "v" },
    { desc = "Close window 7 and swap", noremap = true, silent = true },
  },

  {
    "<leader>8",
    function()
      require("wind.windows").focus_or_create_window(8, "vsplit")
    end,
    mode = { "n", "v" },
    { desc = "Focus or create horizontal window 8", noremap = true, silent = true },
  },
  {
    "<leader>v8",
    function()
      require("wind.windows").focus_or_create_window(8, "split")
    end,
    mode = { "n", "v" },
    { desc = "Focus or create vertical window 8", noremap = true, silent = true },
  },
  {
    "<leader>x8",
    function()
      require("wind.windows").swap_window(8)
    end,
    mode = { "n", "v" },
    { desc = "Swap current window with window 8", noremap = true, silent = true },
  },
  {
    "<leader>q8",
    function()
      require("wind.windows").operate_on_window(8, "q!")
    end,
    mode = { "n", "v" },
    { desc = "Close window 8", noremap = true, silent = true },
  },
  {
    "<leader>z8",
    function()
      require("wind.windows").operate_on_window(8, "wq!")
    end,
    mode = { "n", "v" },
    { desc = "Close window 8 and swap", noremap = true, silent = true },
  },

  {
    "<leader>9",
    function()
      require("wind.windows").focus_or_create_window(9, "vsplit")
    end,
    mode = { "n", "v" },
    { desc = "Focus or create horizontal window 9", noremap = true, silent = true },
  },
  {
    "<leader>v9",
    function()
      require("wind.windows").focus_or_create_window(9, "split")
    end,
    mode = { "n", "v" },
    { desc = "Focus or create vertical window 9", noremap = true, silent = true },
  },
  {
    "<leader>x9",
    function()
      require("wind.windows").swap_window(9)
    end,
    mode = { "n", "v" },
    { desc = "Swap current window with window 9", noremap = true, silent = true },
  },
  {
    "<leader>q9",
    function()
      require("wind.windows").operate_on_window(9, "q!")
    end,
    mode = { "n", "v" },
    { desc = "Close window 9", noremap = true, silent = true },
  },
  {
    "<leader>z9",
    function()
      require("wind.windows").operate_on_window(9, "wq!")
    end,
    mode = { "n", "v" },
    { desc = "Close window 9 and swap", noremap = true, silent = true },
  },
  -- Clipboard keymaps
  {
    "<leader>ya",
    function()
      require("wind.clipboard").yank_with_path()
    end,
    mode = { "n", "v" },
    { desc = "Yank current window with path", noremap = true, silent = true },
  },
  {
    "<leader>y#",
    function()
      require("wind.clipboard").yank_current_window_ai()
    end,
    mode = { "n", "v" },
    { desc = "Yank current window in AI format", noremap = true, silent = true },
  },
  {
    "<leader>y*",
    function()
      require("wind.clipboard").yank_windows_ai()
    end,
    mode = { "n", "v" },
    { desc = "Yank windows in AI format", noremap = true, silent = true },
  },
  {
    "<leader>yn",
    function()
      require("wind.clipboard").yank_filename()
    end,
    mode = { "n", "v" },
    { desc = "Yank filename", noremap = true, silent = true },
  },
}

return keys
