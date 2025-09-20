---@type LazyKeysSpec[]
local keys = {
  {
    "<leader>ot",
    function()
      require("opencode").toggle()
    end,
    mode = "n",
    desc = "Toggle opencode",
    { silent = true },
  },
  {
    "<leader>oA",
    function()
      require("opencode").ask()
    end,
    mode = "n",
    desc = "Ask opencode",
    { silent = true },
  },
  {
    "<leader>oa",
    function()
      require("opencode").ask("@cursor: ")
    end,
    mode = "n",
    desc = "Ask opencode about this",
    { silent = true },
  },
  {
    "<leader>oa",
    function()
      require("opencode").ask("@selection: ")
    end,
    mode = "v",
    desc = "Ask opencode about selection",
    { silent = true },
  },
  {
    "<leader>on",
    function()
      require("opencode").command("session_new")
    end,
    mode = "n",
    desc = "New opencode session",
    { silent = true },
  },
  {
    "<leader>oy",
    function()
      require("opencode").command("messages_copy")
    end,
    mode = "n",
    desc = "Copy last opencode response",
    { silent = true },
  },
  {
    "<S-C-u>",
    function()
      require("opencode").command("messages_half_page_up")
    end,
    mode = "n",
    desc = "Messages half page up",
    { silent = true },
  },
  {
    "<S-C-d>",
    function()
      require("opencode").command("messages_half_page_down")
    end,
    mode = "n",
    desc = "Messages half page down",
    { silent = true },
  },
  {
    "<leader>os",
    function()
      require("opencode").select()
    end,
    mode = { "n", "v" },
    desc = "Select opencode prompt",
    { silent = true },
  },
  {
    "<leader>oe",
    function()
      require("opencode").prompt("Explain @cursor and its context")
    end,
    mode = "n",
    desc = "Explain this code",
    { silent = true },
  },
}

return keys
