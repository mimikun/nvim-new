---@type table
local dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
}

---@type table
local cmds = {
    "ObsidianBridgeDailyNote",
    "ObsidianBridgeOpenGraph",
    "ObsidianBridgeOpenVaultMenu",
    "ObsidianBridgeTelescopeCommand",
}

---@type table
local events = {
    "BufReadPre *.md",
    "BufNewFile *.md",
}

---@type table
local opts = {
    obsidian_server_address = "http://localhost:27123",
    -- See "Sync of buffer scrolling" section below
    scroll_sync = false,
}

---@type LazySpec
local spec = {
    "oflisback/obsidian-bridge.nvim",
    --lazy = false,
    cmd = cmds,
    event = events,
    dependencies = dependencies,
    opts = opts,
    cond = false,
}

return spec
