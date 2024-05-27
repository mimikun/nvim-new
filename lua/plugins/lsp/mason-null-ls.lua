---@type table
local dependencies = {
    "williamboman/mason.nvim",
    "nvimtools/none-ls.nvim",
}

---@type table
local events = { "BufReadPre", "BufNewFile" }

---@type table
local opts = {
    handlers = {},
}

---@type LazySpec
local spec = {
    "jay-babu/mason-null-ls.nvim",
    --lazy = false,
    event = events,
    dependencies = dependencies,
    -- TODO: settings
    opts = opts,
    --cond = false,
}

return spec
