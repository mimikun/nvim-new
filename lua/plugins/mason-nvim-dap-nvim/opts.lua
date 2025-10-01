---@type MasonNvimDapSettings
local opts = {
  ---@type table
  ensure_installed = {
    "python",
    "delve",
    "stylua",
    "jq",
  },

  ---@type boolean
  automatic_installation = false,
  --automatic_installation = { exclude = { "python", "delve" } },

  ---@type table | nil
  handlers = {
    function(config)
      require("mason-nvim-dap").default_setup(config)
    end,
  },
}

return opts
