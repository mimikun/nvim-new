---@type table
local opts = {
  progress = {
    display = {
      overrides = {
        hls = { name = "Haskell Language Server" },
        rust_analyzer = { name = "rust-analyzer" },
      },
    },
  },
  notification = {
    window = {
      ---@type string "none" | "single" | "double" | "rounded" | "solid" | "shadow" | string[]
      border = "none",
      ---@type string "top" | "bottom" | "avoid_cursor"
      align = "bottom",
      ---@type string "editor" | "win"
      relative = "editor",
    },
  },
  integration = {
    ["xcodebuild-nvim"] = { enable = true },
  },
}

return opts
