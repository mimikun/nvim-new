---@type LazySpec
local spec = {
  "nvim-telekasten/calendar-vim",
  --lazy = false,
  cmd = require("plugins.calendar-vim.cmds"),
  keys = require("plugins.calendar-vim.keys"),
  --event = "VeryLazy",
  config = function()
    --[[
    vim.g.calendar_no_mappings = 0
    vim.g.calendar_focus_today = 1
    vim.g.calendar_keys = {
      goto_next_month = "<C-Right>",
      goto_prev_month = "<C-Left>",
    }
    vim.g.calendar_mark = "right"
    vim.g.calendar_diary = vim.fn.expand("$HOME/.vim/diary")
    vim.g.calendar_diary_list = {
      {
        name = "Note",
        path = "$HOME/note",
        ext = ".md",
      },
      {
        name = "Diary",
        path = "$HOME/diary",
        ext = ".diary.md",
      },
    }
    vim.g.calendar_diary_list_curr_idx = 1
    ---@type string "top" | "bottom" | "both"
    vim.g.calendar_navi = ""
    vim.g.calendar_navi_label = "Prev,Today,Next"
    vim.g.calendar_erafmt = "Heisei,-1988"
    vim.g.calendar_mruler = "Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec"
    vim.g.calendar_wruler = "Su Mo Tu We Th Fr Sa"
    vim.g.calendar_monday = 1
    ---WK01 | WK 1 | KW01 | KW 1 | 1
    ---@type number 1 | 2 | 3 | 4 | 5
    vim.g.calendar_weeknm = 1
    ---@type string "title" | "statusline" | ""
    vim.g.calendar_datetime = "title"
    ---@type string "markdown" | "pandoc"
    vim.g.calendar_filetype = "pandoc"
    vim.g.calendar_number_of_months = 5
    ---@type string "grep" | "internal"
    vim.g.calendar_search_grepprg = "internal"
    ]]
  end,
  --cond = false,
  --enabled = false,
}

return spec
