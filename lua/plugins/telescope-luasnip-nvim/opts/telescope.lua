local lst = require("telescope").extensions.luasnip

---@type table
local opts = {
  extensions = {
    luasnip = {
      search = function(entry)
        return lst.filter_null(entry.context.trigger)
          .. " "
          .. lst.filter_null(entry.context.name)
          .. " "
          .. entry.ft
          .. " "
          .. lst.filter_description(entry.context.name, entry.context.description)
          .. lst.get_docstring(require("luasnip"), entry.ft, entry.context)[1]
      end,
    },
  },
}

return opts
