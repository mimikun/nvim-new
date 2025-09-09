---@type LazyKeysSpec[]
local keys = {
  {
    "<leader>oa",
    function()
      vim.cmd("OrgSuperAgenda")
    end,
    mode = "n",
    desc = "open float-window",
  },
  {
    "<leader>oA",
    function()
      vim.cmd("OrgSuperAgenda fullscreen")
    end,
    mode = "n",
    desc = "open fullscreen",
  },
}

return keys
