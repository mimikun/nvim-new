---@type table
local opts = {
  -- Map the <C-h> key to delete a pair
  map_c_h = false,
  -- map <c-w> to delete a pair if possible
  map_c_w = false,
  -- control if auto-pairs should be enabled when attaching to a buffer
  enabled = function(bufnr)
    return true
  end,
  disable_filetype = {
    "TelescopePrompt",
    "spectre_panel",
    "snacks_picker_input",
  },
  -- disable when insert after visual block mode
  disable_in_visualblock = false,
  -- switch for basic rule break undo sequence
  break_undo = true,
  check_ts = false,
  -- trigger abbreviation
  enable_abbr = false,
}

return opts
