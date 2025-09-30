---@type LazyKeysSpec[]
local keys = {
  {
    "u",
    function()
      require("undo-glow").undo()
    end,
    mode = "n",
    { noremap = true, silent = true, desc = "Undo with highlight" },
  },
  {
    "U",
    function()
      require("undo-glow").redo()
    end,
    mode = "n",
    { noremap = true, silent = true, desc = "Redo with highlight" },
  },
  {
    "<C-r>",
    function()
      require("undo-glow").redo()
    end,
    mode = "n",
    { noremap = true, silent = true, desc = "Redo with highlight" },
  },
  {
    "p",
    function()
      require("undo-glow").paste_below()
    end,
    mode = "n",
    { noremap = true, silent = true, desc = "Paste below with highlight" },
  },
  {
    "P",
    function()
      require("undo-glow").paste_above()
    end,
    mode = "n",
    { noremap = true, silent = true, desc = "Paste above with highlight" },
  },
  {
    "n",
    function()
      --require("undo-glow").search_next()
      require("undo-glow").search_next({
        animation = {
          animation_type = "strobe",
        },
      })
    end,
    mode = "n",
    { noremap = true, silent = true, desc = "Search next with highlight" },
  },
  {
    "N",
    function()
      --require("undo-glow").search_prev()
      require("undo-glow").search_prev({
        animation = {
          animation_type = "strobe",
        },
      })
    end,
    mode = "n",
    { noremap = true, silent = true, desc = "Search previous with highlight" },
  },
  {
    "*",
    function()
      --require("undo-glow").search_star()
      require("undo-glow").search_star({
        animation = {
          animation_type = "strobe",
        },
      })
    end,
    mode = "n",
    { noremap = true, silent = true, desc = "Search star/* with highlight" },
  },
  {
    "#",
    function()
      --require("undo-glow").search_hash()
      require("undo-glow").search_hash({
        animation = {
          animation_type = "strobe",
        },
      })
    end,
    mode = "n",
    { noremap = true, silent = true, desc = "Search hash/# with highlight" },
  },
  {
    "gc",
    function()
      --return require("undo-glow").comment()
      -- This is an implementation to preserve the cursor position
      local pos = vim.fn.getpos(".")
      vim.schedule(function()
        vim.fn.setpos(".", pos)
      end)
      return require("undo-glow").comment()
    end,
    mode = { "n", "x" },
    { expr = true, silent = true, noremap = true, desc = "Toggle comment with highlight" },
  },
  {
    "gc",
    function()
      require("undo-glow").comment_textobject()
    end,
    mode = "o",
    { noremap = true, silent = true, desc = "Comment textobject with highlight" },
  },
  {
    "gcc",
    function()
      return require("undo-glow").comment_line()
    end,
    mode = "n",
    { expr = true, noremap = true, silent = true, desc = "Toggle comment line with highlight" },
  },
}

return keys
