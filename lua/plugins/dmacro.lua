---@type table
local keys = {
    { "<C-t>", desc = "Use dmacro" },
}

---@type LazySpec
local spec = {
    "tani/dmacro.nvim",
    --lazy = false,
    keys = keybinds,
    config = function()
        local dmacro = require("dmacro")
        dmacro.setup({
            dmacro_key = "<C-t>",
        })
    end,
}

return spec
