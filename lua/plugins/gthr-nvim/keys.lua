---@type LazyKeysSpec[]
local keys = {
  {
    "<leader>Go",
    "<cmd>Gthr<cr>",
    { noremap = true, silent = true, desc = "Open gthr in floating window" },
  },
  {
    "<leader>Gbi",
    "<cmd>GthrBuffersInteractive<cr>",
    { noremap = true, silent = true, desc = "Open gthr floating window with all open buffers pre-included" },
  },
  {
    "<leader>Gbd",
    "<cmd>GthrBuffersDirect<cr>",
    { noremap = true, silent = true, desc = "Copy context for all open buffers directly" },
  },
}

return keys
