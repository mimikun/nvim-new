---@type LazyKeysSpec[]
local keys = {
  {
    "<C-c>",
    "<Cmd>call denops#interrupt()<CR><C-c>",
    mode = { "n", "i", "c" },
    desc = "Interrupt the process of plugins via <C-c>",
    { silent = true },
  },
}

return keys
