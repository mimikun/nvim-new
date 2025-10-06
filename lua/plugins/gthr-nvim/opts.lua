---@type GthrConfig
local opts = {
  window = {
    width = 0.8,
    height = 0.7,
    ---@type "single" | "double" | "rounded" | "solid" | "shadow"
    border = "rounded",
  },
  cmd = nil,
  auto_install = true,
  gthr = {
    root = nil,
    respect_gitignore = true,
    show_hidden = false,
    max_file_size = 2097152, -- 2MB
  },
}

return opts
