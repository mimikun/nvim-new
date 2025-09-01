---@type LazyKeysSpec[]
local keys = {
  {
    "<leader>nto",
    ":NeovimTips<CR>",
    mode = "n",
    desc = "Neovim tips",
    { noremap = true, silent = true },
  },
  {
    "<leader>nte",
    ":NeovimTipsEdit<CR>",
    mode = "n",
    desc = "Edit your Neovim tips",
    { noremap = true, silent = true },
  },
  {
    "<leader>nta",
    ":NeovimTipsAdd<CR>",
    mode = "n",
    desc = "Add your Neovim tip",
    { noremap = true, silent = true },
  },
  {
    "<leader>ntr",
    ":NeovimTipsRandom<CR>",
    mode = "n",
    desc = "Show random tip",
    { noremap = true, silent = true },
  },
}

return keys
