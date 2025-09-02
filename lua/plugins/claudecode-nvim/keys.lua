---@type LazyKeysSpec[]
local keys = {
  -- AI/Claude Code prefix
  {
    "<leader>a",
    nil,
    desc = "AI/Claude Code",
  },
  -- Core Claude commands
  {
    "<leader>ac",
    "<cmd>ClaudeCode<cr>",
    desc = "Toggle Claude",
  },
  {
    "<leader>af",
    "<cmd>ClaudeCodeFocus<cr>",
    desc = "Focus Claude",
  },
  {
    "<leader>ar",
    "<cmd>ClaudeCode --resume<cr>",
    desc = "Resume Claude",
  },
  {
    "<leader>aC",
    "<cmd>ClaudeCode --continue<cr>",
    desc = "Continue Claude",
  },
  {
    "<leader>am",
    "<cmd>ClaudeCodeSelectModel<cr>",
    desc = "Select Claude model",
  },
  -- Context sending
  {
    "<leader>ab",
    "<cmd>ClaudeCodeAdd %<cr>",
    mode = "n",
    desc = "Add current buffer",
  },
  {
    "<leader>as",
    "<cmd>ClaudeCodeSend<cr>",
    mode = "v",
    desc = "Send to Claude",
  },
  {
    "<leader>as",
    "<cmd>ClaudeCodeTreeAdd<cr>",
    ft = { "NvimTree", "neo-tree", "oil", "minifiles" },
    desc = "Add file from tree",
  },
  -- Diff management
  {
    "<leader>aa",
    "<cmd>ClaudeCodeDiffAccept<cr>",
    desc = "Accept diff",
  },
  {
    "<leader>ad",
    "<cmd>ClaudeCodeDiffDeny<cr>",
    desc = "Deny diff",
  },
  -- Development helpers
  {
    "<leader>ao",
    "<cmd>ClaudeCodeOpen<cr>",
    desc = "Open Claude",
  },
  {
    "<leader>aq",
    "<cmd>ClaudeCodeClose<cr>",
    desc = "Close Claude",
  },
  {
    "<leader>ai",
    "<cmd>ClaudeCodeStatus<cr>",
    desc = "Claude Status",
  },
  {
    "<leader>aS",
    "<cmd>ClaudeCodeStart<cr>",
    desc = "Start Claude Server",
  },
  {
    "<leader>aQ",
    "<cmd>ClaudeCodeStop<cr>",
    desc = "Stop Claude Server",
  },
}

return keys
