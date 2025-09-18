---@type LazyKeysSpec[]
local keys = {
  {
    "<leader>Fu",
    "<cmd>Telescope undo<cr>",
    mode = "n",
    desc = "undo history",
    { silent = true },
  },
}

return keys
