--local settings = require("config.settings")
local is_home = false

---@type LazySpec[]
local dependencies = {
  -- NOTE: Snippets
  "L3MON4D3/LuaSnip",
  "rafamadriz/friendly-snippets",
  -- NOTE: Appearance
  --"xzbdmw/colorful-menu.nvim",
  -- NOTE: Other
  "nvim-lua/plenary.nvim",
  "folke/snacks.nvim",
  "saghen/blink.compat",
  -- NOTE: Source(use blink.compat)
  --"rcarriga/cmp-dap",
  "MattiasMTS/cmp-dbee",
  -- NOTE: Sources
  "folke/lazydev.nvim",
  "philosofonusus/ecolog.nvim",
  "arakkkkk/kanban.nvim",
  "jdrupal-dev/css-vars.nvim",
  "moyiz/blink-emoji.nvim",
  "MahanRahmati/blink-nerdfont.nvim",
  "marcoSven/blink-yanky.nvim",
  "Kaiser-Yang/blink-cmp-dictionary",
  "ribru17/blink-cmp-spell",
  "disrupted/blink-cmp-conventional-commits",
  "Kaiser-Yang/blink-cmp-git",
  "mikavilpas/blink-ripgrep.nvim",
  "mgalliou/blink-cmp-tmux",
  "junkblocker/blink-cmp-wezterm",
  "erooke/blink-cmp-latex",
  "alexandre-abrioux/blink-cmp-npm.nvim",
  "archie-judd/blink-cmp-words",
  { "bydlw98/blink-cmp-sshconfig", build = "make" },
  --"nvim-orgmode/orgmode",
}

if is_home then
  table.insert(dependencies, {
    "fang2hou/blink-copilot",
    "zbirenbaum/copilot.lua",
    "copilotlsp-nvim/copilot-lsp",
    "folke/sidekick.nvim",
  })
  table.insert(dependencies, {
    "Kaiser-Yang/blink-cmp-avante",
  })
end

--if settings.use_github_copilot then
--  table.insert(dependencies, { "fang2hou/blink-copilot" })
--end
--
--if settings.use_avante then
--  table.insert(dependencies, { "Kaiser-Yang/blink-cmp-avante" })
--end

return dependencies
