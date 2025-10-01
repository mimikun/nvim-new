---@type LazyKeysSpec[]
local keys = {
  {
    "<leader>ai",
    function()
      require("conduit").ask()
      --require("conduit").ask("@cursor: ")
    end,
    mode = "n",
    { noremap = true, silent = true, desc = "Generate conduit prompt" },
  },
  {
    "<leader>ac",
    function()
      require("conduit").ask("@cursor: ")
    end,
    mode = "n",
    { noremap = true, silent = true, desc = "Generate conduit prompt at cursor" },
  },
  {
    "<leader>ai",
    function()
      require("conduit").ask("@selection: ")
    end,
    mode = "v",
    { noremap = true, silent = true, desc = "Generate conduit prompt about selection" },
  },
  {
    "<leader>ap",
    function()
      require("conduit").select_prompt()
    end,
    mode = { "n", "v" },
    { noremap = true, silent = true, desc = "Select conduit prompt" },
  },
  {
    "<leader>ad",
    function()
      require("conduit").select_prompt("fix_line")
    end,
    mode = "n",
    { noremap = true, silent = true, desc = "Get diagnostic prompt" },
  },
}

return keys
