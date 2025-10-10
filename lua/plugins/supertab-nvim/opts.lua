---@module "supertab"
---@type fun():supertab.Config
local opts = function()
  local luasnip = require("luasnip")
  local supermaven = require("supermaven-nvim.completion_preview")

  return {
    keys = {
      ["<Tab>"] = {
        {
          condition = function()
            return luasnip.expand_or_jumpable()
          end,
          action = function()
            luasnip.expand_or_jump()
          end,
        },
        {
          condition = function()
            return supermaven.has_suggestion()
          end,
          action = function()
            supermaven.on_accept_suggestion()
          end,
        },
      },
    },
  }
end

return opts
