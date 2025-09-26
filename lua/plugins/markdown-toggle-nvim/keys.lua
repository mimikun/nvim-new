---@type LazyKeysSpec[]
local keys = {
  {
    "<C-q>",
    function()
      require("markdown-toggle").quote_dot()
    end,
    mode = "n",
    desc = "MarkdownToggle Quote Dot-repeat",
    { silent = true, noremap = true, expr = true },
  },
  {
    "<C-l>",
    function()
      require("markdown-toggle").list_dot()
    end,
    mode = "n",
    desc = "MarkdownToggle List Dot-repeat",
    { silent = true, noremap = true, expr = true },
  },
  {
    "<Leader><C-l>",
    function()
      require("markdown-toggle").list_cycle_dot()
    end,
    mode = "n",
    desc = "MarkdownToggle List-Cycle Dot-repeat",
    { silent = true, noremap = true, expr = true },
  },
  {
    "<C-n>",
    function()
      require("markdown-toggle").olist_dot()
    end,
    mode = "n",
    desc = "MarkdownToggle Ordered List Dot-repeat",
    { silent = true, noremap = true, expr = true },
  },
  {
    "<M-x>",
    function()
      require("markdown-toggle").checkbox_dot()
    end,
    mode = "n",
    desc = "MarkdownToggle Checkbox Dot-repeat",
    { silent = true, noremap = true, expr = true },
  },
  {
    "<Leader><M-x>",
    function()
      require("markdown-toggle").checkbox_cycle_dot()
    end,
    mode = "n",
    desc = "MarkdownToggle Checkbox-Cycle Dot-repeat",
    { silent = true, noremap = true, expr = true },
  },
  {
    "<C-h>",
    function()
      require("markdown-toggle").heading_dot()
    end,
    mode = "n",
    desc = "MarkdownToggle Heading Dot-repeat",
    { silent = true, noremap = true, expr = true },
  },
  -- No Dot-repeat
  {
    "<C-q>",
    function()
      require("markdown-toggle").quote()
    end,
    mode = "x",
    desc = "MarkdownToggle Quote",
    { silent = true, noremap = true, expr = false },
  },
  {
    "<C-l>",
    function()
      require("markdown-toggle").list()
    end,
    mode = "x",
    desc = "MarkdownToggle List",
    { silent = true, noremap = true, expr = false },
  },
  {
    "<Leader><C-l>",
    function()
      require("markdown-toggle").list_cycle()
    end,
    mode = "x",
    desc = "MarkdownToggle List-Cycle",
    { silent = true, noremap = true, expr = false },
  },
  {
    "<C-n>",
    function()
      require("markdown-toggle").olist()
    end,
    mode = "x",
    desc = "MarkdownToggle Ordered List",
    { silent = true, noremap = true, expr = false },
  },
  {
    "<M-x>",
    function()
      require("markdown-toggle").checkbox()
    end,
    mode = "x",
    desc = "MarkdownToggle Checkbox",
    { silent = true, noremap = true, expr = false },
  },
  {
    "<Leader><M-x>",
    function()
      require("markdown-toggle").checkbox_cycle()
    end,
    mode = "x",
    desc = "MarkdownToggle Checkbox-Cycle",
    { silent = true, noremap = true, expr = false },
  },
  {
    "<C-h>",
    function()
      require("markdown-toggle").heading()
    end,
    mode = "x",
    desc = "MarkdownToggle Heading",
    { silent = true, noremap = true, expr = false },
  },
  {
    "O",
    function()
      require("markdown-toggle").autolist_up()
    end,
    mode = "n",
    desc = "MarkdownToggle Autolist upward",
    { silent = true, noremap = true, expr = false },
  },
  {
    "o",
    function()
      require("markdown-toggle").autolist_down()
    end,
    mode = "n",
    desc = "MarkdownToggle Autolist downward",
    { silent = true, noremap = true, expr = false },
  },
  {
    "<CR>",
    function()
      require("markdown-toggle").autolist_cr()
    end,
    mode = "i",
    desc = "MarkdownToggle Autolist <CR>",
    { silent = true, noremap = true, expr = false },
  },
  {
    "<Leader>mU",
    function()
      require("markdown-toggle").switch_unmarked_only()
    end,
    mode = "n",
    desc = "MarkdownToggle Switch unmarked-only",
    { silent = true, noremap = true },
  },
  {
    "<Leader>mB",
    function()
      require("markdown-toggle").switch_blankhead_skip()
    end,
    mode = "n",
    desc = "MarkdownToggle Switch blankhead-skip",
    { silent = true, noremap = true },
  },
  {
    "<Leader>mS",
    function()
      require("markdown-toggle").switch_auto_samestate()
    end,
    mode = "n",
    desc = "MarkdownToggle Switch auto-samestate",
    { silent = true, noremap = true },
  },
  {
    "<Leader>mL",
    function()
      require("markdown-toggle").switch_cycle_list_table()
    end,
    mode = "n",
    desc = "MarkdownToggle Switch cycle-list-table",
    { silent = true, noremap = true },
  },
  {
    "<Leader>mX",
    function()
      require("markdown-toggle").switch_cycle_box_table()
    end,
    mode = "n",
    desc = "MarkdownToggle Switch cycle-box-table",
    { silent = true, noremap = true },
  },
  {
    "<Leader>mC",
    function()
      require("markdown-toggle").switch_list_before_box()
    end,
    mode = "n",
    desc = "MarkdownToggle Switch list-before-box",
    { silent = true, noremap = true },
  },
}

return keys
