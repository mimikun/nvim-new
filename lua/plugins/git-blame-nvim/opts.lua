---@type SetupOptions
local opts = {
  enabled = true,
  date_format = "%Y-%m-%d %H:%M:%S",
  message_template = " <summary> • <date> • <author> • <<sha>>",
  display_virtual_text = true,
  ignored_filetypes = {},
  delay = 250,
  ---@type number | nil
  virtual_text_column = 1,
  use_blame_commit_file_urls = false,
  ---@type "CursorMovedI" | "CursorHoldI"
  schedule_event = "CursorMoved",
  ---@type "CursorMoved" | "CursorHold"
  clear_event = "CursorMovedI",
  max_commit_summary_length = 0,
  remote_domains = {
    ["git.sr.ht"] = "sourcehut",
    ["dev.azure.com"] = "azure",
    ["bitbucket.org"] = "bitbucket",
    ["codeberg.org"] = "codeberg",
  },
}

return opts
