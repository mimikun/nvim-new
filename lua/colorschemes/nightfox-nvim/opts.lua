---@type table
local opts = {
  options = {
    compile_path = vim.fn.stdpath("cache") .. "/nightfox",
    transparent = false, -- Disable setting background
    dim_inactive = false, -- Non focused panes set to alternative background
    colorblind = {
      enable = false, -- Enable colorblind support
      simulate_only = false, -- Only show simulated colorblind colors and not diff shifted
      severity = {
        protan = 0, -- Severity [0,1] for protan (red)
        deutan = 0, -- Severity [0,1] for deutan (green)
        tritan = 0, -- Severity [0,1] for tritan (blue)
      },
    },
    inverse = { -- Inverse highlight for different types
      match_paren = false,
      visual = false,
      search = false,
    },
  },
}

return opts
