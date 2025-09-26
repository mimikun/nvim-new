---@type LazyKeysSpec[]
local keys = {
  {
    "<Leader>cb",
    "<Cmd>CBllbox<CR>",
    mode = { "n", "v" },
    desc = "left aligned fixed size box with left aligned text",
    { noremap = true, silent = true },
  },
  {
    "<Leader>cc",
    "<Cmd>CBacbox<CR>",
    mode = { "n", "v" },
    desc = "centered adapted box",
    { noremap = true, silent = true },
  },
  {
    "<Leader>ct",
    "<Cmd>llline<CR>",
    mode = { "n", "v" },
    desc = "left aligned titled line with left aligned text",
    { noremap = true, silent = true },
  },
  {
    "<Leader>cl",
    "<Cmd>CBcline<CR>",
    mode = "n",
    desc = "centered line",
    { noremap = true, silent = true },
  },
  {
    "<M-l>",
    "<Cmd>CBcline<CR>",
    mode = "i",
    desc = "centered line",
    { noremap = true, silent = true },
  },
  {
    "<Leader>cd",
    "<Cmd>CBd<CR>",
    mode = { "n", "v" },
    desc = "remove a box or a titled line",
    { noremap = true, silent = true },
  },
}

return keys
