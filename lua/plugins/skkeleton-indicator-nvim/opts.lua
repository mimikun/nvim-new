---@alias SkkeletonIndicatorBorder
---| "none"
---| "single"
---| "double"
---| "rounded"
---| "solid"
---| "shadow"
---| string[]
---| string[][]

---@alias SkkeletonIndicatorBorderOpt
---| SkkeletonIndicatorBorder?
---| fun(args: SkkeletonIndicatorBorderArgs): SkkeletonIndicatorBorder?

---@type SkkeletonIndicatorOpts
local opts = {
  eiji_text = "英字",
  hira_text = "ひら",
  kata_text = "カタ",
  hankata_text = "半ｶﾀ",
  zenkaku_text = "全英",
  abbrev_text = "abbr",
  ---@type SkkeletonIndicatorBorderOpt
  border = "single",
  row = 1,
  col = 1,
  zindex = nil,
  always_shown = true,
  fade_out_ms = 3000,
  ignore_ft = {},
  buf_filter = function(_)
    return true
  end,
  use_default_highlight = true,
}

return opts
