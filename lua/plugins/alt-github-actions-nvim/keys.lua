---@type LazyKeysSpec[]
local keys = {
  {
    "<leader>ga",
    function()
      require("github-actions").show_ci_status()
    end,
    mode = "n",
    { noremap = true, silent = true, desc = "GitHub Actions Status" },
  },
}

return keys
