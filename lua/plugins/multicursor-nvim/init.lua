---@type LazySpec
local spec = {
    "jake-stewart/multicursor.nvim",
    --lazy = false,
    keys = require("plugins.multicursor-nvim.keys"),
    event = "VeryLazy",
    config = function()
        local mc = require("multicursor-nvim")
        mc.setup()
        mc.addKeymapLayer(function(layerSet)
            layerSet({ "n", "x" }, "<left>", mc.prevCursor)
            layerSet({ "n", "x" }, "<right>", mc.nextCursor)
            layerSet({ "n", "x" }, "<leader>x", mc.deleteCursor)
            layerSet("n", "<esc>", function()
                if not mc.cursorsEnabled() then
                    mc.enableCursors()
                else
                    mc.clearCursors()
                end
            end)
        end)
    end,
    --cond = false,
    --enabled = false,
}

return spec
