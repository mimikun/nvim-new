---@type LazyKeysSpec[]
local keys = {
  {
    "<C-W><C-M>",
    "<Cmd>WinShift<CR>",
    mode = "n",
    { noremap = true, silent = true },
  },
  {
    "<C-W>m",
    "<Cmd>WinShift<CR>",
    mode = "n",
    { noremap = true, silent = true },
  },
  {
    "<C-W>X",
    "<Cmd>WinShift swap<CR>",
    mode = "n",
    { noremap = true, silent = true },
  },
  {
    "<C-M-H>",
    "<Cmd>WinShift left<CR>",
    mode = "n",
    { noremap = true, silent = true },
  },
  {
    "<C-M-J>",
    "<Cmd>WinShift down<CR>",
    mode = "n",
    { noremap = true, silent = true },
  },
  {
    "<C-M-K>",
    "<Cmd>WinShift up<CR>",
    mode = "n",
    { noremap = true, silent = true },
  },
  {
    "<C-M-L>",
    "<Cmd>WinShift right<CR>",
    mode = "n",
    { noremap = true, silent = true },
  },
}

return keys
