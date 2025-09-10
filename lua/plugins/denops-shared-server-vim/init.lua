---@type LazySpec
local spec = {
  "vim-denops/denops-shared-server.vim",
  lazy = false,
  cmd = require("plugins.denops-shared-server-vim.cmds"),
  dependencies = { "vim-denops/denops.vim" },
  config = function()
    vim.api.nvim_create_user_command("DenopsSharedServerInstall", function()
      vim.cmd([[denops_shared_server#install()]])
    end, {})
    vim.api.nvim_create_user_command("DenopsSharedServerUninstall", function()
      vim.cmd([[denops_shared_server#uninstall()]])
    end, {})
    vim.api.nvim_create_user_command("DenopsSharedServerRestart", function()
      vim.cmd([[denops_shared_server#restart()]])
    end, {})
  end,
  cond = false,
  enabled = false,
}

return spec
