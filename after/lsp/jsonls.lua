-- TODO: it

local config

-- schemastore.nvim only
config = {
  settings = {
    json = {
      schemas = require("schemastore").json.schemas(),
      validate = { enable = true },
    },
  },
}

--[[
-- schema-companion.nvim only
config = require("schema-companion").setup_client(require("schema-companion").adapters.jsonls.setup({
  sources = {
    require("schema-companion").sources.lsp.setup(),
    require("schema-companion").sources.none.setup(),
  },
}))
]]

return config
