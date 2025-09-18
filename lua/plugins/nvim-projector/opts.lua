---@type Config
local opts = {
  ---@alias core_config { depencency_mode: task_mode, automatic_reload: boolean }
  ---@type core_config
  core = {
    ---@type task_mode
    depencency_mode = require("projector.outputs").TaskOutputBuilder:new():mode_name(),
    ---@type boolean
    automatic_reload = false,
  },

  ---@type Loader[]
  loaders = {
    require("projector.loaders").BuiltinLoader:new({
      path = function()
        return vim.fn.getcwd() .. "/.vim/projector.json"
      end,
    }),
    require("projector.loaders").DapLoader:new(),
  },

  ---@type OutputBuilder[]
  outputs = {
    require("projector_dbee").OutputBuilder:new(),
    require("projector.outputs").TaskOutputBuilder:new(),
    require("projector.outputs").DadbodOutputBuilder:new(),
    require("projector.outputs").DapOutputBuilder:new(),
  },

  ---@type dashboard_config
  dashboard = {
    mappings = {
      action_1 = {
        key = "<CR>",
        mode = "n",
      },
      action_2 = {
        key = "r",
        mode = "n",
      },
      action_3 = {
        key = "d",
        mode = "n",
      },
      toggle_fold = {
        key = "o",
        mode = "n",
      },
    },
    -- eye candy settings:
    disable_candies = false,
    candies = {
      task_visible = { icon = "" },
      task_hidden = { icon = "" },
      task_inactive = { icon = "" },
      task_group = { icon = "󱓼" },
      action = { icon = "󰣪" },
      loader = { icon = "󰃖" },
      mode = { icon = "" },
      group = { icon = "" },
      comment = { icon = "" },
      none = { icon = "" },
      can_expand = { icon = "o" },
    },
    popup = {
      width = 100,
      height = 20,
    },
  },
}

return opts
