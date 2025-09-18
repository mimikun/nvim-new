---@type table
local opts = {
  extensions = {
    fzf = {
      ---@type string "smart_case" | "ignore_case" | "respect_case"
      case_mode = "smart_case",
    },
  },
}

return opts
