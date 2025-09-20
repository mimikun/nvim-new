---@type rustowl.Config
local opts = {
  auto_enable = false,
  idle_time = 500,
  client = {
    on_attach = function(_, buffer)
      vim.keymap.set("n", "<leader>o", function()
        require("rustowl").toggle(buffer)
      end, { buffer = buffer, desc = "Toggle RustOwl" })
    end,
  },
  ---@type "undercurl" | "underline"
  highlight_style = "undercurl",
}

return opts
