---@type LazyKeysSpec[]
local keys = {
  {
    "<leader>tc",
    function()
      require("comment-tasks").create_task_from_comment()
    end,
    mode = "n",
    { desc = "Create task (default provider)", silent = true },
  },
  {
    "<leader>tcc",
    function()
      require("comment-tasks").create_clickup_task_from_comment()
    end,
    mode = "n",
    { desc = "Create ClickUp task", silent = true },
  },
  {
    "<leader>tcg",
    function()
      require("comment-tasks").create_github_task_from_comment()
    end,
    mode = "n",
    { desc = "Create GitHub issue", silent = true },
  },
  {
    "<leader>tct",
    function()
      require("comment-tasks").create_todoist_task_from_comment()
    end,
    mode = "n",
    { desc = "Create Todoist task", silent = true },
  },
  {
    "<leader>tcl",
    function()
      require("comment-tasks").create_gitlab_task_from_comment()
    end,
    mode = "n",
    { desc = "Create GitLab issue", silent = true },
  },
  {
    "<leader>tx",
    function()
      require("comment-tasks").close_task_from_comment()
    end,
    mode = "n",
    { desc = "Close task", silent = true },
  },
  {
    "<leader>tf",
    function()
      require("comment-tasks").add_file_to_task_sources()
    end,
    mode = "n",
    { desc = "Add file to task", silent = true },
  },
}

return keys
