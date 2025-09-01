---@type notify.Config
local opts = {
  ---@type string|function[]|nil "fade" | "slide" | "slide_out" | "fade_in_slide_out" | "static"
  stages = "fade_in_slide_out",
  ---@type function|string|nil "default" | "minimal"
  render = "default",
  merge_duplicates = true,
  icons = {
    ERROR = "",
    WARN = "",
    INFO = "",
    DEBUG = "",
    TRACE = "✎",
  },
}

return opts
