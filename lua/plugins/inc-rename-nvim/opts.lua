---@type inc_rename.UserConfig
local opts = {
  -- whether an empty new name should be previewed; if false the command preview will be cancelled instead
  preview_empty_name = false,
  -- the type of the external input buffer to use (currently supports "dressing" or "snacks")
  input_buffer_type = nil,
  -- callback to run after renaming, receives the result table (from LSP handler) as an argument
  post_hook = nil,
}

return opts
