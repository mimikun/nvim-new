---@type LazyKeysSpec[]
local keys = {
  {
    "<C-s>",
    "<Plug>MarkdownPreview",
    mode = "n",
  },
  {
    "<M-s>",
    "<Plug>MarkdownPreviewStop",
    mode = "n",
  },
  {
    "<C-p>",
    "<Plug>MarkdownPreviewToggle",
    mode = "n",
  },
}

return keys
