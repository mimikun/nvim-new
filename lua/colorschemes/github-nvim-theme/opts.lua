---@type GhTheme.Config.Options
local opts = {
  options = {
    compile_path = vim.fn.stdpath("cache") .. "/github-theme",
    transparent = false,
    dim_inactive = false,
    inverse = {
      match_paren = false,
      visual = false,
      search = false,
    },
  },
}

return opts
