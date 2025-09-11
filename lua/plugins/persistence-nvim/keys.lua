---@type LazyKeysSpec[]
local keys = {
  {
    "<leader>qs",
    function()
      require("persistence").load()
    end,
    mode = "n",
    desc = "load the session for the current directory",
  },
  {
    "<leader>qS",
    function()
      require("persistence").select()
    end,
    mode = "n",
    desc = "select a session to load",
  },
  {
    "<leader>ql",
    function()
      require("persistence").load({ last = true })
    end,
    mode = "n",
    desc = "load the last session",
  },
  {
    "<leader>qd",
    function()
      require("persistence").stop()
    end,
    mode = "n",
    desc = "stop Persistence => session won't be saved on exit",
  },
}

return keys
