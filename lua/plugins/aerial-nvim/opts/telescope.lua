---@type table
local opts = {
  extensions = {
    aerial = {
      col1_width = 4,
      col2_width = 30,
      format_symbol = function(symbol_path, filetype)
        if filetype == "json" or filetype == "yaml" then
          return table.concat(symbol_path, ".")
        else
          return symbol_path[#symbol_path]
        end
      end,
      ---@type "symbols" | "lines" | "both"
      show_columns = "both",
    },
  },
}

return opts
