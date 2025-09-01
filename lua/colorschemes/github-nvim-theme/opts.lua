---@type GhTheme.Config.Options
local opts = {
  options = {
    compile_path = vim.fn.stdpath("cache") .. "/github-theme",
    transparent = vim.g.transparent_enabled,
    dim_inactive = false,
    inverse = {
      match_paren = false,
      visual = false,
      search = false,
    },
  },
}

return opts
