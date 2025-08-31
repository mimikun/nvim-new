---@type Flash.Config
local opts = {
  search = {
    ---@type Flash.Pattern.Mode "exact" | "search" | "fuzzy"
    mode = "exact",
    incremental = false,
    ---@type (string|fun(win:window))[]
    exclude = {
      "notify",
      "cmp_menu",
      "noice",
      "flash_prompt",
      function(win)
        -- exclude non-focusable windows
        return not vim.api.nvim_win_get_config(win).focusable
      end,
    },
  },
  jump = {
    ---@type "start" | "end" | "range"
    pos = "start",
  },
  label = {
    ---@type "eol" | "overlay" | "right_align" | "inline"
    style = "overlay",
    ---@type "lowercase" | "all" | "none"
    reuse = "lowercase",
    rainbow = {
      enabled = true,
    },
  },
}

return opts
