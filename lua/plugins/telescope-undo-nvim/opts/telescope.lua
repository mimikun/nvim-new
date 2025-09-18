---@type table
local opts = {
  extensions = {
    undo = {
      use_delta = true,
      -- should be in this format: { "bash", "-c", "echo '$DIFF' | delta" }
      -- setting this implies `use_delta = false`. Accepted format is: { "bash", "-c", "echo '$DIFF' | delta" }
      use_custom_command = nil,
      side_by_side = true,
      entry_format = "state #$ID, $STAT, $TIME",
      layout_strategy = "vertical",
      layout_config = {
        preview_height = 0.8,
      },
    },
  },
}

return opts
