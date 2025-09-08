---@type LazySpec
local spec = {
  "edluffy/specs.nvim",
  --lazy = false,
  cmd = require("plugins.specs-nvim.cmds"),
  --keys = require("plugins.specs-nvim.keys"),
  event = "VeryLazy",
  config = function()
    local specs = require("specs")
    specs.setup(require("plugins.specs-nvim.opts"))
    vim.api.nvim_create_user_command("SpecsToggle", function()
      specs.toggle()
    end, {})
    vim.api.nvim_create_user_command("SpecsShow", function()
      specs.show_specs()
    end, {})
  end,
  cond = false,
  enabled = false,
}

return spec
