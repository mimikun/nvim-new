---@type LazySpec
local spec = {
  "jecaro/ghcid-error-file.nvim",
  --lazy = false,
  ft = { "haskell" },
  cmd = require("plugins.ghcid-error-file-nvim.cmds"),
  --event = "VeryLazy",
  config = function()
    local ghcid_error_file = require("ghcid-error-file")

    vim.api.nvim_create_user_command("Cf", function(opts)
      ghcid_error_file.cf(opts.args)
    end, {
      nargs = "?",
      complete = "file",
    })

    vim.api.nvim_create_user_command("CfResetBaseDir", function()
      ghcid_error_file.cfResetBaseDir()
    end, {})
  end,
  cond = false,
  enabled = false,
}

return spec
