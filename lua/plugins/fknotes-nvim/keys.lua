---@type LazyKeysSpec[]
local keys = {
  {
    "<leader>fn",
    function()
      require("fknotes.ui.menu").open_main_menu()
    end,
    mode = "n",
    { desc = "Open the FKNotes Main Menu", silent = true },
  },
  {
    "<leader>nt",
    function()
      require("fknotes.ui.task_form").new_task()
    end,
    mode = "n",
    { desc = "Create New FKNotes Task", silent = true },
  },
  {
    "<leader>ln",
    function()
      require("fknotes.ui.task_browser").show_browser()
    end,
    mode = "n",
    { desc = "Browse All FKNotes Tasks", silent = true },
  },
  {
    "<leader>nn",
    function()
      require("fknotes.ui.new_notebook_form").open()
    end,
    mode = "n",
    { desc = "Create New FKNotes Notebook", silent = true },
  },
}

return keys
