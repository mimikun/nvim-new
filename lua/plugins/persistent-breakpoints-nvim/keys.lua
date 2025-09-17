-- TODO: it

---@type LazyKeysSpec[]
local keys = {
  {
    --"<YourLHSKey1>",
    function()
      require("persistent-breakpoints.api").toggle_breakpoint()
    end,
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    --"<YourLHSKey2>",
    function()
      require("persistent-breakpoints.api").set_conditional_breakpoint()
    end,
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    --"<YourLHSKey3>",
    function()
      require("persistent-breakpoints.api").clear_all_breakpoints()
    end,
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    --"<YourLHSKey4>",
    "<lhs>",
    function()
      require("persistent-breakpoints.api").set_log_point()
    end,
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
}

return keys
