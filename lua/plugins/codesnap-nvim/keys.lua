---@type LazyKeysSpec[]
local keys = {
  {
    "<leader>cc",
    function()
      vim.cmd("CodeSnap")
    end,
    mode = "x",
    desc = "Save selected code snapshot into clipboard",
  },
  {
    "<leader>cs",
    function()
      vim.cmd("CodeSnapSave")
    end,
    mode = "x",
    desc = "Save selected code snapshot in ~/Pictures",
  },
}

return keys
