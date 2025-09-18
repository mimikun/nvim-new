---@type LazyKeysSpec[]
local keys = {
  {
    "<leader>Ff",
    function()
      require("telescope.builtin").find_files()
    end,
    { desc = "Telescope find files" },
    mode = "n",
  },
  {
    "<leader>Fg",
    function()
      require("telescope.builtin").live_grep()
    end,
    { desc = "Telescope live grep" },
    mode = "n",
  },
  {
    "<leader>Fb",
    function()
      require("telescope.builtin").buffers()
    end,
    { desc = "Telescope buffers" },
    mode = "n",
  },
  {
    "<leader>Fh",
    function()
      require("telescope.builtin").help_tags()
    end,
    { desc = "Telescope help tags" },
    mode = "n",
  },
}

return keys
