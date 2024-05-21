---@type boolean
local is_human_rights = require("config.global").is_human_rights

---@type table
local dependencies = {
    "vim-denops/denops.vim",
    "yuki-yano/denops-lazy.nvim",
    "lambdalisue/vim-kensaku",
}

---@type LazySpec
local command_spec = {
    "lambdalisue/vim-kensaku-command",
    --lazy = false,
    --event = "VeryLazy",
    cmd = "Kensaku",
    dependencies = dependencies,
    config = function()
        local denops_lazy = require("denops-lazy")
        denops_lazy.load("vim-kensaku-command")
    end,
    -- Disable if there are no human rights
    cond = is_human_rights,
}

---@type table
local search_keys = {
    { "<CR>", desc = "kensaku-search-replace" },
}

local search_spec = {
    "lambdalisue/vim-kensaku-search",
    --lazy = false,
    --event = "VeryLazy",
    keys = search_keys,
    dependencies = dependencies,
    config = function()
        local denops_lazy = require("denops-lazy")
        denops_lazy.load("vim-kensaku-search")

        vim.set.keymap("c", "<CR>", "<Plug>(kensaku-search-replace)<CR>", { noremap = true })
    end,
    -- Disable if there are no human rights
    cond = is_human_rights,
}

---@type LazySpec[]
local specs = {
    command_spec,
    search_spec,
}

return specs
