local excludes = {
  filetypes = {
    "gitcommit",
    "NvimTree",
    "Outline",
    "TelescopePrompt",
    "alpha",
    "dashboard",
    "lazygit",
    "neo-tree",
    "oil",
    "prompt",
    "toggleterm",
  },
  filenames = {},
}

local function save_condition(buf)
  if
    vim.tbl_contains(excludeds.filetypes, vim.fn.getbufvar(buf, "&filetype"))
    or vim.tbl_contains(excludeds.filenames, vim.fn.expand("%:t"))
  then
    return false
  end
  return true
end

---@type table
local opts = {
  enabled = false,
  trigger_events = {
    immediate_save = {
      "BufLeave",
      "FocusLost",
      "QuitPre",
      "VimSuspend",
    },
    defer_save = {
      "InsertLeave",
      "TextChanged",
    },
    cancel_deferred_save = {
      "InsertEnter",
    },
  },
  condition = save_condition,
  lockmarks = false,
}

return opts
