---@type LazyKeysSpec[]
local keys = {
  {
    "<C-b>",
    function()
      require("markdowny").bold()
    end,
    mode = "v",
    desc = "Toggles visually selected text to bold",
    { buffer = 0, silent = true },
  },
  {
    "<C-k>",
    function()
      require("markdowny").link()
    end,
    mode = "v",
    desc = "Adds a link to visually selected text",
    { buffer = 0, silent = true },
  },
  {
    "<C-i>",
    function()
      require("markdowny").italic()
    end,
    mode = "v",
    desc = "Toggles visually selected text to italic",
    { buffer = 0, silent = true },
  },
  {
    "<C-e>",
    function()
      require("markdowny").code()
    end,
    mode = "v",
    desc = "Toggles visually selected text to inline code, and **V-LINE** selected text to a multiline code block",
    { buffer = 0, silent = true },
  },
}

return keys
