-- TODO: it

local config

-- schema-companion.nvim only
config = require("schema-companion").setup_client(require("schema-companion").adapters.taplo.setup({
  sources = {
    require("schema-companion").sources.lsp.setup(),
    require("schema-companion").sources.none.setup(),
  },
}))

return config
