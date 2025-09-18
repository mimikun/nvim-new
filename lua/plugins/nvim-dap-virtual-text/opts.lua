---@type nvim_dap_virtual_text_options
local opts = {
  enabled = true,
  highlight_new_as_changed = false,
  commented = false,
  all_references = false,
  clear_on_continue = false,
  all_frames = false,
  virt_lines = false,
  virt_text_win_col = nil,
  virt_text_pos = vim.fn.has("nvim-0.10") == 1 and "inline" or "eol",
  text_prefix = "",
  separator = ",",
  error_prefix = "  ",
  info_prefix = "  ",
}

return opts
