---@type table
local opts = {
  ---@type "clickup" | "github" | "todoist" | "gitlab"
  default_provider = "clickup",

  providers = {
    clickup = {
      enabled = true,
      list_id = nil,
      team_id = nil,
      api_key_env = "CLICKUP_API_KEY",
    },
    github = {
      enabled = false,
      repo_owner = nil,
      repo_name = nil,
      api_key_env = "GITHUB_TOKEN",
    },
    todoist = {
      enabled = false,
      project_id = nil,
      api_key_env = "TODOIST_API_TOKEN",
    },
    gitlab = {
      enabled = false,
      project_id = nil,
      api_key_env = "GITLAB_TOKEN",
      gitlab_url = "https://gitlab.com",
    },
  },
  -- Creates task using default provider
  keymap = "<leader>tc",

  -- Fallback to regex patterns if Tree-sitter is unavailable
  fallback_to_regex = true,
}

return opts
