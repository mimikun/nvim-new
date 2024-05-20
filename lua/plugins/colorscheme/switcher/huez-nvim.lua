local huez_config = vim.fs.normalize(vim.fn.stdpath("config")) .. "/.nvim.huez.lua"

---@type table
local huez_omit_themes = {
    "default",
    "desert",
    "evening",
    "industry",
    "koehler",
    "morning",
    "murphy",
    "pablo",
    "peachpuff",
    "ron",
    "shine",
    "slate",
    "torte",
    "zellner",
    "blue",
    "darkblue",
    "delek",
    "quiet",
    "elflord",
    "habamax",
    "lunaperche",
}

---@type LazySpec
local spec = {
    "vague2k/huez.nvim",
    --lazy = false,
    cmd = "Huez",
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = function()
        local huez = require("huez")
        local huez_api = require("huez.api")

        huez.setup({
            file_path = huez_config,
            fallback = "default",
            omit = huez_omit_themes,
            picker = "telescope",
            picker_opts = require("telescope.themes").get_dropdown({}),
        })
        local colorscheme = huez_api.get_colorscheme()
        vim.cmd("colorscheme " .. colorscheme)
    end,
    --cond = false,
}

return spec
