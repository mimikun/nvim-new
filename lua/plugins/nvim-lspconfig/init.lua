---@type LazySpec
local spec = {
  "neovim/nvim-lspconfig",
  --lazy = false,
  --ft = "",
  --cmd = "CMDNAME",
  --keys = "",
  --event = "VeryLazy",
  dependencies = { "saghen/blink.cmp" },
  opts = {
    servers = {
      lua_ls = {},
    },
  },
  config = function(_, opts)
    local lspconfig = require("lspconfig")
    for server, config in pairs(opts.servers) do
      -- passing config.capabilities to blink.cmp merges with the capabilities in your
      -- `opts[server].capabilities, if you've defined it
      config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
      lspconfig[server].setup(config)
    end
  end,
  --cond = false,
  --enabled = false,
}

return spec
