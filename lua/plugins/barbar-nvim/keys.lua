---@type LazyKeysSpec[]
local keys = {
  -- Move to previous/next
  {
    "<A-,>",
    "<Cmd>BufferPrevious<CR>",
    mode = "n",
    desc = "Move to previous",
    { noremap = true, silent = true },
  },
  {
    "<A-.>",
    "<Cmd>BufferNext<CR>",
    mode = "n",
    desc = "Move to next",
    { noremap = true, silent = true },
  },
  -- Re-order to previous/next
  {
    "<A-<>",
    "<Cmd>BufferMovePrevious<CR>",
    mode = "n",
    desc = "Re-order to previous",
    { noremap = true, silent = true },
  },
  {
    "<A->>",
    "<Cmd>BufferMoveNext<CR>",
    mode = "n",
    desc = "Re-order to next",
    { noremap = true, silent = true },
  },
  -- Goto buffer in position...
  {
    "<A-1>",
    "<Cmd>BufferGoto 1<CR>",
    mode = "n",
    desc = "Goto buffer in position 1",
    { noremap = true, silent = true },
  },
  {
    "<A-2>",
    "<Cmd>BufferGoto 2<CR>",
    mode = "n",
    desc = "Goto buffer in position 2",
    { noremap = true, silent = true },
  },
  {
    "<A-3>",
    "<Cmd>BufferGoto 3<CR>",
    mode = "n",
    desc = "Goto buffer in position 3",
    { noremap = true, silent = true },
  },
  {
    "<A-4>",
    "<Cmd>BufferGoto 4<CR>",
    mode = "n",
    desc = "Goto buffer in position 4",
    { noremap = true, silent = true },
  },
  {
    "<A-5>",
    "<Cmd>BufferGoto 5<CR>",
    mode = "n",
    desc = "Goto buffer in position 5",
    { noremap = true, silent = true },
  },
  {
    "<A-6>",
    "<Cmd>BufferGoto 6<CR>",
    mode = "n",
    desc = "Goto buffer in position 6",
    { noremap = true, silent = true },
  },
  {
    "<A-7>",
    "<Cmd>BufferGoto 7<CR>",
    mode = "n",
    desc = "Goto buffer in position 7",
    { noremap = true, silent = true },
  },
  {
    "<A-8>",
    "<Cmd>BufferGoto 8<CR>",
    mode = "n",
    desc = "Goto buffer in position 8",
    { noremap = true, silent = true },
  },
  {
    "<A-9>",
    "<Cmd>BufferGoto 9<CR>",
    mode = "n",
    desc = "Goto buffer in position 9",
    { noremap = true, silent = true },
  },
  {
    "<A-0>",
    "<Cmd>BufferLast<CR>",
    mode = "n",
    desc = "Goto buffer in position Last",
    { noremap = true, silent = true },
  },
  -- Pin/unpin buffer
  {
    "<A-p>",
    "<Cmd>BufferPin<CR>",
    mode = "n",
    desc = "Pin/unpin buffer",
    { noremap = true, silent = true },
  },
  -- Close buffer
  {
    "<A-c>",
    "<Cmd>BufferClose<CR>",
    mode = "n",
    desc = "Close buffer",
    { noremap = true, silent = true },
  },
  -- Magic buffer-picking mode
  {
    "<C-p>",
    "<Cmd>BufferPick<CR>",
    mode = "n",
    desc = "Magic buffer-picking mode",
    { noremap = true, silent = true },
  },
  {
    "<C-s-p>",
    "<Cmd>BufferPickDelete<CR>",
    mode = "n",
    desc = "Magic buffer-picking mode, Delete",
    { noremap = true, silent = true },
  },
  -- Sort automatically by...
  {
    "<Space>bb",
    "<Cmd>BufferOrderByBufferNumber<CR>",
    mode = "n",
    desc = "Sort automatically by buffer number",
    { noremap = true, silent = true },
  },
  {
    "<Space>bn",
    "<Cmd>BufferOrderByName<CR>",
    mode = "n",
    desc = "Sort automatically by name",
    { noremap = true, silent = true },
  },
  {
    "<Space>bd",
    "<Cmd>BufferOrderByDirectory<CR>",
    mode = "n",
    desc = "Sort automatically by directory",
    { noremap = true, silent = true },
  },
  {
    "<Space>bl",
    "<Cmd>BufferOrderByLanguage<CR>",
    mode = "n",
    desc = "Sort automatically by language",
    { noremap = true, silent = true },
  },
  {
    "<Space>bw",
    "<Cmd>BufferOrderByWindowNumber<CR>",
    mode = "n",
    desc = "Sort automatically by window number",
    { noremap = true, silent = true },
  },
}

return keys
