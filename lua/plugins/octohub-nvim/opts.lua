---@type OctohubConfigOptions
local opts = {
  ---@type OctohubReposConfig
  repos = {
    ---@type string Directory where repositories are cloned
    projects_dir = "~/Projects/",
  },
}

return opts
