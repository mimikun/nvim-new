--[[  
   ┌                                      ┐
   │                 LINES                │
   └                                      ┘
  
   1 - Simple (Default)
  
   ─── title ──────────────────────────────
  

   2 - Simple - Rounded corner down
  
   ╭── title ─────────────────────────────╮
  

   3 - Simple - Rounded corner up
  
   ╰── title ─────────────────────────────╯
  

   4 - Simple - Squared corner down
  
   ┌── title ─────────────────────────────┐
  

   5 - Simple - Squared corner up
  
   └── title ─────────────────────────────┘
  

   6 - Simple - Squared title
  
   ──[ title ]─────────────────────────────
  

   7 - Simple - Rounded title
  
   ──( title )─────────────────────────────
  

   8 - Simple - Spiked title
  
   ──< title >─────────────────────────────
  
  
   9 - Simple Heavy
  
   ━━━ title ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  
  
   10 - Confined
  
   ├──┤ title ├───────────────────────────┤
  
   
   11 - Confined Heavy
  
   ┣━━┫ title ┣━━━━━━━━━━━━━━━━━━━━━━━━━━━┫
  
  
   12 - Simple Weighted
  
   ╾──╼ title ╾───────────────────────────╼
  
  
   13 - Double
  
   ════ title ═════════════════════════════
  
  
   14 - Double Confined
  
   ╞══╡ title ╞═══════════════════════════╡
  
  
   15 - ASCII A
  
   ---- title -----------------------------
  
  
   16 - ASCII B
  
   ____ title _____________________________
  
  
   17 - ASCII C
  
   +--+ title +---------------------------+
  
]]

---@type table
local lines = {
  --1 - Simple (Default)
  simple = {
    line = "─",
    line_start = "─",
    line_end = "─",
    title_left = "─",
    title_right = "─",
  },
  --2 - Simple - Rounded corner down
  simple_rounded_corner_down = {
    line = "─",
    line_start = "╭",
    line_end = "╮",
    title_left = "─",
    title_right = "─",
  },
  --3 - Simple - Rounded corner up
  simple_rounded_corner_up = {
    line = "─",
    line_start = "╰",
    line_end = "╯",
    title_left = "─",
    title_right = "─",
  },
  --4 - Simple - Squared corner down
  simple_squared_corner_down = {
    line = "─",
    line_start = "┌",
    line_end = "┐",
    title_left = "─",
    title_right = "─",
  },
  --5 - Simple - Squared corner up
  simple_squared_corner_up = {
    line = "─",
    line_start = "└",
    line_end = "┘",
    title_left = "─",
    title_right = "─",
  },
  --6 - Simple - Squared title
  simple_squared_title = {
    line = "─",
    line_start = "─",
    line_end = "─",
    title_left = "[",
    title_right = "]",
  },
  --7 - Simple - Rounded title
  simple_rounded_title = {
    line = "─",
    line_start = "─",
    line_end = "─",
    title_left = "(",
    title_right = ")",
  },
  --8 - Simple - Spiked title
  simple_spiked_title = {
    line = "─",
    line_start = "─",
    line_end = "─",
    title_left = "<",
    title_right = ">",
  },
  --9 - Simple Heavy
  simple_heavy = {
    line = "━",
    line_start = "━",
    line_end = "━",
    title_left = "━",
    title_right = "━",
  },
  --10 - Confined
  confined = {
    line = "─",
    line_start = "├",
    line_end = "┤",
    title_left = "┤",
    title_right = "├",
  },
  --11 - Confined Heavy
  confined_heavy = {
    line = "━",
    line_start = "┣",
    line_end = "┫",
    title_left = "┫",
    title_right = "┣",
  },
  --12 - Simple Weighted
  simple_weighted = {
    line = "─",
    line_start = "╾",
    line_end = "╼",
    title_left = "╼",
    title_right = "╾",
  },
  --13 - Double
  double = {
    line = "═",
    line_start = "═",
    line_end = "═",
    title_left = "═",
    title_right = "═",
  },
  --14 - Double Confined
  double_confined = {
    line = "═",
    line_start = "╞",
    line_end = "╡",
    title_left = "╡",
    title_right = "╞",
  },
  --15 - ASCII A
  ascii_a = {
    line = "-",
    line_start = "-",
    line_end = "-",
    title_left = "-",
    title_right = "-",
  },
  --16 - ASCII B
  ascii_b = {
    line = "_",
    line_start = "_",
    line_end = "_",
    title_left = "_",
    title_right = "_",
  },
  --17 - ASCII C
  ascii_c = {
    line = "-",
    line_start = "+",
    line_end = "+",
    title_left = "+",
    title_right = "+",
  },
}

return lines
