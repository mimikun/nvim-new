---@type LazyKeysSpec[]
local keys = {
  -- Navigation
  {
    "]s",
    function()
      require("presenterm").next_slide()
    end,
    mode = "n",
    { noremap = true, silent = true, desc = "Next slide" },
  },
  {
    "[s",
    function()
      require("presenterm").previous_slide()
    end,
    mode = "n",
    { noremap = true, silent = true, desc = "Previous slide" },
  },
  -- Slide management
  {
    "<leader>sn",
    function()
      require("presenterm").new_slide()
    end,
    mode = "n",
    { noremap = true, silent = true, desc = "New slide" },
  },
  {
    "<leader>ss",
    function()
      require("presenterm").split_slide()
    end,
    mode = "n",
    { noremap = true, silent = true, desc = "Split slide" },
  },
  {
    "<leader>sd",
    function()
      require("presenterm").delete_slide()
    end,
    mode = "n",
    { noremap = true, silent = true, desc = "Delete slide" },
  },
  {
    "<leader>sy",
    function()
      require("presenterm").yank_slide()
    end,
    mode = "n",
    { noremap = true, silent = true, desc = "Yank slide" },
  },
  {
    "<leader>sv",
    function()
      require("presenterm").select_slide()
    end,
    mode = "n",
    { noremap = true, silent = true, desc = "Select slide" },
  },
  {
    "<leader>sk",
    function()
      require("presenterm").move_slide_up()
    end,
    mode = "n",
    { noremap = true, silent = true, desc = "Move slide up" },
  },
  {
    "<leader>sj",
    function()
      require("presenterm").move_slide_down()
    end,
    mode = "n",
    { noremap = true, silent = true, desc = "Move slide down" },
  },
  {
    "<leader>sR",
    function()
      require("presenterm").interactive_reorder()
    end,
    mode = "n",
    { noremap = true, silent = true, desc = "Reorder slides" },
  },
  -- Picker integration
  {
    "<leader>sl",
    function()
      require("presenterm.pickers").slide_picker()
    end,
    mode = "n",
    { noremap = true, silent = true, desc = "List slides" },
  },
  {
    "<leader>sL",
    function()
      require("presenterm.layout").layout_picker()
    end,
    mode = "n",
    { noremap = true, silent = true, desc = "Select layout" },
  },
  {
    "<leader>sp",
    function()
      require("presenterm.pickers").partial_picker()
    end,
    mode = "n",
    { noremap = true, silent = true, desc = "Include partial" },
  },
  -- Code execution
  {
    "<C-e>",
    function()
      require("presenterm").toggle_exec()
    end,
    mode = { "n", "i" },
    { noremap = true, silent = true, desc = "Toggle +exec" },
  },
  {
    "<leader>sr",
    function()
      require("presenterm").run_code_block()
    end,
    mode = "n",
    { noremap = true, silent = true, desc = "Run code block" },
  },
  -- Preview
  {
    "<leader>sP",
    function()
      require("presenterm").preview()
    end,
    mode = "n",
    { noremap = true, silent = true, desc = "Preview presentation" },
  },
  {
    "<leader>sc",
    function()
      require("presenterm").presentation_stats()
    end,
    mode = "n",
    { noremap = true, silent = true, desc = "Presentation stats" },
  },
}

return keys
