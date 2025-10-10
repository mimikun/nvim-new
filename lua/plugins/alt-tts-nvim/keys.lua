---@type LazyKeysSpec[]
local keys = {
  {
    "<leader>tp",
    "<cmd>TTSPlay<cr>",
    mode = { "n", "v" },
    { noremap = true, silent = true, desc = "TTS: Play current selection/section" },
  },
  {
    "<leader>ts",
    "<cmd>TTSStop<cr>",
    mode = "n",
    { noremap = true, silent = true, desc = "TTS: Stop playback" },
  },
  {
    "<leader>tq",
    "<cmd>TTSQueue<cr>",
    mode = { "n", "v" },
    { noremap = true, silent = true, desc = "TTS: Show/Add queue" },
  },
  {
    "<leader>tc",
    "<cmd>TTSClear<cr>",
    mode = "n",
    { noremap = true, silent = true, desc = "TTS: Clear queue" },
  },
  {
    "<leader>tn",
    "<cmd>TTSNext<cr>",
    mode = "n",
    { noremap = true, silent = true, desc = "TTS: Next in queue" },
  },
  {
    "<leader>tN",
    "<cmd>TTSPrev<cr>",
    mode = "n",
    { noremap = true, silent = true, desc = "TTS: Previous in queue" },
  },
}

return keys
