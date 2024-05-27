---@type LazySpec
local spec = {
    "nvim-orgmode/orgmode",
    lazy = false,
    --event = "VeryLazy",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = {
        org_agenda_files = "~/orgfiles/**/*",
        org_default_notes_file = "~/orgfiles/refile.org",
    },
    --cond = false,
}

return spec
