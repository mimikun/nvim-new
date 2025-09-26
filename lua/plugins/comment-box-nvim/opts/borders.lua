--[[

   ┌                                      ┐
   │                 BOXES                │
   └                                      ┘

   1 - Rounded (Default)
   ╭──────────────────────────────────────╮
   │ Lorem ipsumdolor sit amet,           │
   │  consectetur adipiscing elit, sed    │
   │  do eiusmod tempor incididunt...     │
   ╰──────────────────────────────────────╯

   2 - Classic
   ┌──────────────────────────────────────┐
   │ Lorem ipsumdolor sit amet,           │
   │  consectetur adipiscing elit, sed    │
   │  do eiusmod tempor incididunt...     │
   └──────────────────────────────────────┘

   3 - Classic Heavy
   ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
   ┃ Lorem ipsumdolor sit amet,           ┃
   ┃  consectetur adipiscing elit, sed    ┃
   ┃  do eiusmod tempor incididunt...     ┃
   ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

   4 - Dashed
   ┌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┐
   ╎ Lorem ipsumdolor sit amet,           ╎
   ╎  consectetur adipiscing elit, sed    ╎
   ╎  do eiusmod tempor incididunt...     ╎
   └╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┘

   5 - Dashed Heavy
   ┏╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍┓
   ╏ Lorem ipsumdolor sit amet,           ╏
   ╏  consectetur adipiscing elit, sed    ╏
   ╏  do eiusmod tempor incididunt...     ╏
   ┗╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍┛

   6 - Mix Heavy/Light
   ┍━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┑
   │ Lorem ipsumdolor sit amet,           │
   │  consectetur adipiscing elit, sed    │
   │  do eiusmod tempor incididunt...     │
   ┕━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┙

   7 - Double
   ╔══════════════════════════════════════╗
   ║ Lorem ipsumdolor sit amet,           ║
   ║  consectetur adipiscing elit, sed    ║
   ║  do eiusmod tempor incididunt...     ║
   ╚══════════════════════════════════════╝

   8 - Mix Double/Single A
   ╒══════════════════════════════════════╕
   │ Lorem ipsumdolor sit amet,           │
   │  consectetur adipiscing elit, sed    │
   │  do eiusmod tempor incididunt...     │
   ╘══════════════════════════════════════╛

   9 - Mix Double/Single B
   ╓──────────────────────────────────────╖
   ║ Lorem ipsumdolor sit amet,           ║
   ║  consectetur adipiscing elit, sed    ║
   ║  do eiusmod tempor incididunt...     ║
   ╙──────────────────────────────────────╜

   10 - ASCII
   +--------------------------------------+
   | Lorem ipsumdolor sit amet,           |
   |  consectetur adipiscing elit, sed    |
   |  do eiusmod tempor incididunt...     |
   +--------------------------------------+

   11 - Quote A
   ▲
   █ Lorem ipsumdolor sit amet,
   █  consectetur adipiscing elit, sed
   █  do eiusmod tempor incididunt...
   ▼

   12 - Quote B
   ┌
   │ Lorem ipsumdolor sit amet,
   │  consectetur adipiscing elit, sed
   │  do eiusmod tempor incididunt...
   └

   13 - Quote C
   ╓
   ║ Lorem ipsumdolor sit amet,
   ║  consectetur adipiscing elit, sed
   ║  do eiusmod tempor incididunt...
   ╙

   14 - Marked A
                                          ▲
     Lorem ipsumdolor sit amet,           █
      consectetur adipiscing elit, sed    █
      do eiusmod tempor incididunt...     █
                                          ▼

   15 - Marked B
                                          ┐
     Lorem ipsumdolor sit amet,           │
      consectetur adipiscing elit, sed    │
      do eiusmod tempor incididunt...     │
                                          ┘

   16 - Marked C
                                          ╖
     Lorem ipsumdolor sit amet,           ║
      consectetur adipiscing elit, sed    ║
      do eiusmod tempor incididunt...     ║
                                          ╜

   17 - Vertically Enclosed A
   ▲                                      ▲
   █ Lorem ipsumdolor sit amet,           █
   █  consectetur adipiscing elit, sed    █
   █  do eiusmod tempor incididunt...     █
   ▼                                      ▼

   18 - Vertically Enclosed B
   ┌                                      ┐
   │ Lorem ipsumdolor sit amet,           │
   │  consectetur adipiscing elit, sed    │
   │  do eiusmod tempor incididunt...     │
   └                                      ┘

   19 - Vertically Enclosed C
   ╓                                      ╖
   ║ Lorem ipsumdolor sit amet,           ║
   ║  consectetur adipiscing elit, sed    ║
   ║  do eiusmod tempor incididunt...     ║
   ╙                                      ╜

   20 - Horizontally Enclosed A
   ┌──────────────────────────────────────┐
     Lorem ipsumdolor sit amet,
      consectetur adipiscing elit, sed
      do eiusmod tempor incididunt...
   └──────────────────────────────────────┘

   21 - Horizontally Enclosed B
   ╒══════════════════════════════════════╕
     Lorem ipsumdolor sit amet,
      consectetur adipiscing elit, sed
      do eiusmod tempor incididunt...
   ╘══════════════════════════════════════╛

   22 - Horizontally Enclosed C
   ╒══════════════════════════════════════╕
     Lorem ipsumdolor sit amet,
      consectetur adipiscing elit, sed
      do eiusmod tempor incididunt...
   └──────────────────────────────────────┘

]]
---@type table
local boxes_borders = {
  --1 - Rounded (Default)
  rounded = {
    top = "─",
    bottom = "─",
    left = "│",
    right = "│",
    top_left = "╭",
    top_right = "╮",
    bottom_left = "╰",
    bottom_right = "╯",
  },
  --2 - Classic
  classic = {
    top = "─",
    bottom = "─",
    left = "│",
    right = "│",
    top_left = "┌",
    top_right = "┐",
    bottom_left = "└",
    bottom_right = "┘",
  },
  --3 - Classic Heavy
  classic_heavy = {
    top = "━",
    bottom = "━",
    left = "┃",
    right = "┃",
    top_left = "┏",
    top_right = "┓",
    bottom_left = "┗",
    bottom_right = "┛",
  },
  --4 - Dashed
  dashed = {
    top = "╌",
    bottom = "╌",
    left = "╎",
    right = "╎",
    top_left = "┌",
    top_right = "┐",
    bottom_left = "└",
    bottom_right = "┘",
  },
  --5 - Dashed Heavy
  dashed_Heavy = {
    top = "╍",
    bottom = "╍",
    left = "╏",
    right = "╏",
    top_left = "┏",
    top_right = "┓",
    bottom_left = "┗",
    bottom_right = "┛",
  },
  --6 - Mix Heavy/Light
  mix_heavy_light = {
    top = "━",
    bottom = "━",
    left = "│",
    right = "│",
    top_left = "┍",
    top_right = "┑",
    bottom_left = "┕",
    bottom_right = "┙",
  },
  --7 - Double
  double = {
    top = "═",
    bottom = "═",
    left = "║",
    right = "║",
    top_left = "╔",
    top_right = "╗",
    bottom_left = "╚",
    bottom_right = "╝",
  },
  --8 - Mix Double/Single A
  mix_double_single_a = {
    top = "═",
    bottom = "═",
    left = "│",
    right = "│",
    top_left = "╒",
    top_right = "╕",
    bottom_left = "╘",
    bottom_right = "╛",
  },
  --9 - Mix Double/Single B
  mix_double_single_b = {
    top = "─",
    bottom = "─",
    left = "║",
    right = "║",
    top_left = "╓",
    top_right = "╖",
    bottom_left = "╙",
    bottom_right = "╜",
  },
  --10 - ASCII
  ascii = {
    top = "-",
    bottom = "-",
    left = "|",
    right = "|",
    top_left = "+",
    top_right = "+",
    bottom_left = "+",
    bottom_right = "+",
  },
  --11 - Quote A
  quote_a = {
    top = " ",
    bottom = " ",
    left = "█",
    right = " ",
    top_left = "▲",
    top_right = " ",
    bottom_left = "▼",
    bottom_right = " ",
  },
  --12 - Quote B
  quote_b = {
    top = " ",
    bottom = " ",
    left = "│",
    right = " ",
    top_left = "┌",
    top_right = " ",
    bottom_left = "└",
    bottom_right = " ",
  },
  --13 - Quote C
  quote_c = {
    top = " ",
    bottom = " ",
    left = "║",
    right = " ",
    top_left = "╓",
    top_right = " ",
    bottom_left = "╙",
    bottom_right = " ",
  },
  --14 - Marked A
  marked_a = {
    top = " ",
    bottom = " ",
    left = " ",
    right = "█",
    top_left = " ",
    top_right = "▲",
    bottom_left = " ",
    bottom_right = "▼",
  },
  --15 - Marked B
  marked_b = {
    top = " ",
    bottom = " ",
    left = " ",
    right = "│",
    top_left = " ",
    top_right = "┐",
    bottom_left = " ",
    bottom_right = "┘",
  },
  --16 - Marked C
  marked_c = {
    top = " ",
    bottom = " ",
    left = " ",
    right = "║",
    top_left = " ",
    top_right = "╖",
    bottom_left = " ",
    bottom_right = "╜",
  },
  --17 - Vertically Enclosed A
  vertically_enclosed_a = {
    top = " ",
    bottom = " ",
    left = "█",
    right = "█",
    top_left = "▲",
    top_right = "▲",
    bottom_left = "▼",
    bottom_right = "▼",
  },
  --18 - Vertically Enclosed B
  vertically_enclosed_b = {
    top = " ",
    bottom = " ",
    left = "│",
    right = "│",
    top_left = "┌",
    top_right = "┐",
    bottom_left = "└",
    bottom_right = "┘",
  },
  --19 - Vertically Enclosed C
  vertically_enclosed_c = {
    top = " ",
    bottom = " ",
    left = "║",
    right = "║",
    top_left = "╓",
    top_right = "╖",
    bottom_left = "╙",
    bottom_right = "╜",
  },
  --20 - Horizontally Enclosed A
  horizontally_enclosed_a = {
    top = "─",
    bottom = "─",
    left = " ",
    right = " ",
    top_left = "┌",
    top_right = "┐",
    bottom_left = "└",
    bottom_right = "┘",
  },
  --21 - Horizontally Enclosed B
  horizontally_enclosed_b = {
    top = "═",
    bottom = "═",
    left = " ",
    right = " ",
    top_left = "╒",
    top_right = "╕",
    bottom_left = "╘",
    bottom_right = "╛",
  },
  --22 - Horizontally Enclosed C
  horizontally_enclosed_c = {
    top = "═",
    bottom = "─",
    left = " ",
    right = " ",
    top_left = "╒",
    top_right = "╕",
    bottom_left = "└",
    bottom_right = "┘",
  },
}

return boxes_borders
