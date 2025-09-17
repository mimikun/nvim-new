---@type LazyKeysSpec[]
local keys = {
  {
    "<localleader>cm",
    function()
      require("manim.render").render_scene()
    end,
    mode = "n",
    desc = "Render manim scene under cursor",
    { silent = true },
  },
}

return keys
