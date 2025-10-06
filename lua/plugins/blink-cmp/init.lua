---@type boolean
--local use_blink_cmp = require("config.settings").use_blink_cmp

---@type table
local builds = {
  cargo = "cargo build --release",
  nix = "nix run .#build-plugin",
}

---@type LazySpec
local spec = {
  "saghen/blink.cmp",
  --build = builds.cargo,
  version = "1.*",
  --lazy = false,
  --cmd = require("plugins.blink-cmp.cmds"),
  event = "InsertEnter",
  dependencies = require("plugins.blink-cmp.dependencies"),
  config = function()
    require("blink.cmp").setup(require("plugins.blink-cmp.opts"))

    vim.api.nvim_create_autocmd("User", {
      pattern = "BlinkCmpMenuOpen",
      callback = function()
        vim.b.copilot_suggestion_hidden = true
      end,
    })

    vim.api.nvim_create_autocmd("User", {
      pattern = "BlinkCmpMenuClose",
      callback = function()
        vim.b.copilot_suggestion_hidden = false
      end,
    })
  end,
  --cond = false,
  --enabled = false,
  --cond = use_blink_cmp,
  --enabled = use_blink_cmp,
}

return spec
