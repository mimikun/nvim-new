---@type string
local deno_bin_path = "deno"

---@type LazySpec
local spec = {
  "vim-denops/denops.vim",
  lazy = false,
  cmd = require("plugins.denops-vim.cmds"),
  keys = require("plugins.denops-vim.keys"),
  event = "VeryLazy",
  config = function()
    vim.g.denops_disable_version_check = 0
    vim.g.denops_server_addr = "127.0.0.1:32123"
    vim.g["denops#disabled"] = 0
    vim.g["denops#deno"] = deno_bin_path
    vim.g["denops#deno_dir"] = nil
    vim.g["denops#debug"] = 0
    vim.g["denops#disable_deprecation_warning_message"] = 0
    vim.g["denops#server#deno"] = deno_bin_path
    vim.g["denops#server#deno_args"] = { "-q", "--no-lock", "-A" }
    vim.g["denops#server#restart_delay"] = 100
    vim.g["denops#server#restart_interval"] = 10000
    vim.g["denops#server#restart_threshold"] = 3
    vim.g["denops#server#reconnect_delay"] = 100
    vim.g["denops#server#reconnect_interval"] = 1000
    vim.g["denops#server#reconnect_threshold"] = 3
    vim.g["denops#server#close_timeout"] = 5000
    vim.g["denops#server#wait_interval"] = 10
    vim.g["denops#server#wait_timeout"] = 30000
    vim.g["denops#plugin#wait_interval"] = 10
    vim.g["denops#plugin#wait_timeout"] = 30000
    -- Restart Denops server
    vim.api.nvim_create_user_command("DenopsRestart", function()
      vim.cmd("denops#server#restart()")
    end, {})
    -- Fix Deno module cache issue
    vim.api.nvim_create_user_command("DenopsFixCache", function()
      vim.cmd("denops#cache#update(#{reload: v:true})")
    end, {})
  end,
  cond = false,
  enabled = false,
}

return spec
