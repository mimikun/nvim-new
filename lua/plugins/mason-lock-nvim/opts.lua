---@type table
local opts = {
  lockfile_path = table.concat({
    vim.fn.stdpath("config"),
    "mason-lock.json",
  }, "/"),
}

return opts
