---@type LazyKeysSpec[]
local keys = {
  {
    "n",
    vim.cmd([[<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>]]),
    mode = "n",
    { noremap = true, silent = true },
  },
  {
    "N",
    vim.cmd([[<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>]]),
    mode = "n",
    { noremap = true, silent = true },
  },
  {
    "*",
    vim.cmd([[*<Cmd>lua require('hlslens').start()<CR>]]),
    mode = "n",
    { noremap = true, silent = true },
  },
  {
    "#",
    vim.cmd([[#<Cmd>lua require('hlslens').start()<CR>]]),
    mode = "n",
    { noremap = true, silent = true },
  },
  {
    "g*",
    vim.cmd([[g*<Cmd>lua require('hlslens').start()<CR>]]),
    mode = "n",
    { noremap = true, silent = true },
  },
  {
    "g#",
    vim.cmd([[g#<Cmd>lua require('hlslens').start()<CR>]]),
    mode = "n",
    { noremap = true, silent = true },
  },
  {
    "<Leader>l",
    "<Cmd>noh<CR>",
    mode = "n",
    { noremap = true, silent = true },
  },
}

return keys
