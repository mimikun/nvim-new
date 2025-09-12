---@type LazyKeysSpec[]
local keys = {
  { "<leader>n", desc = "org-roam" },
  -- Main
  { "<leader>nc", desc = "Opens org-roam capture window" },
  { "<leader>nf", desc = "Finds node and moves to it, creating it if it does not exist" },
  -- NOTE: its
  { "<leader>naa", desc = "Adds an alias to the node under cursor" },
  { "<leader>noa", desc = "Adds an origin to the node under cursor" },
  { "<leader>n.", desc = "Completes the node under cursor" },
  { "<leader>nn", desc = "Goes to the next node in sequence (via origin) for the node under cursor" },
  { "<leader>np", desc = "Goes to the prev node in sequence (via origin) for the node under cursor" },
  { "<leader>ni", desc = "Inserts node at cursor position, creating it if it does not exist" },
  { "<leader>nm", desc = "Same as =insert_node=, but skips opening capture buffer" },
  { "<leader>nq", desc = "Opens the quickfix menu for backlinks to the current node under cursor" },
  { "<leader>nar", desc = "Removes an alias from the node under cursor" },
  { "<leader>nor", desc = "Removes the origin from the node under cursor" },
  { "<leader>nl", desc = "Toggles the org-roam node-view buffer for the node under cursor" },
  { "<leader>nb", desc = "Toggles a fixed org-roam node-view buffer for a selected node" },
  -- Dailies Extension
  { "<leader>ndD", desc = "Capture a specific date's note" },
  { "<leader>ndN", desc = "Capture today's note" },
  { "<leader>ndT", desc = "Capture tomorrow's note" },
  { "<leader>ndY", desc = "Capture yesterday's note" },
  { "<leader>nd.", desc = "Navigate to dailies note directory" },
  { "<leader>ndd", desc = "Navigate to specific date's note" },
  { "<leader>ndf", desc = "Navigate to the next note in date sequence" },
  { "<leader>ndb", desc = "Navigate to the previous note in date sequence" },
  { "<leader>ndn", desc = "Navigate to today's note" },
  { "<leader>ndt", desc = "Navigate to tomorrow's note" },
  { "<leader>ndy", desc = "Navigate to yesterday's note" },
}

return keys
