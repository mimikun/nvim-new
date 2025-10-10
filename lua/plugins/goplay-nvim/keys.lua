---@type LazyKeysSpec[]
local keys = {
  {
    "<leader>gpt",
    ":GPToggle<CR>",
    mode = "n",
    { noremap = true, silent = true },
  },
  {
    "<leader>gpe",
    ":GPExec<CR>",
    mode = "n",
    { noremap = true, silent = true },
  },
  {
    "<leader>gpf",
    ":GPExecFile<CR>",
    mode = "n",
    { noremap = true, silent = true },
  },
}

return keys
