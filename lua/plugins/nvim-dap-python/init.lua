---@type LazySpec
local spec = {
  "mfussenegger/nvim-dap-python",
  --lazy = false,
  ft = { "python" },
  keys = require("plugins.nvim-dap-python.keys"),
  --event = "VeryLazy",
  dependencies = require("plugins.nvim-dap-python.dependencies"),
  config = function()
    --require("dap-python").setup("/path/to/venv/bin/python")
    --require("dap-python").setup("python3")
    --require("dap-python").setup("python")
    --require("dap-python").setup("uv")
  end,
  --cond = false,
  --enabled = false,
}

return spec
