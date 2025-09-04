---@type boolean
local is_windows = false

---@type table
local opts = {
  ring = {
    ---@type string "shada" | "sqlite" | "memory"
    storage = "shada",
    storage_path = vim.fn.stdpath("data") .. "/databases/yanky.db",
    update_register_on_cycle = false,
    permanent_wrapper = is_windows and require("yanky.wrappers").remove_carriage_return or nil,
  },
  textobj = {
    enabled = false,
  },
}

return opts
