---@type CommentBoxConfig
local opts = {
  ---@type "line" | "block" | "auto"
  comment_style = "line",
  doc_width = 80,
  box_width = 60,
  borders = require("plugins.comment-box-nvim.opts.borders").rounded,
  line_width = 70,
  lines = require("plugins.comment-box-nvim.opts.lines").simple,
  outer_blank_lines_above = false,
  outer_blank_lines_below = false,
  inner_blank_lines = false,
  line_blank_line_above = false,
  line_blank_line_below = false,
}

return opts
