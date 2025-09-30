---@type LazyKeysSpec[]
local keys = {
  -- NOTE: textcase current_word
  {
    "gau",
    function()
      require("textcase").current_word("to_upper_case")
    end,
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    "gal",
    function()
      require("textcase").current_word("to_lower_case")
    end,
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    "gas",
    function()
      require("textcase").current_word("to_snake_case")
    end,
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    "gad",
    function()
      require("textcase").current_word("to_dash_case")
    end,
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    "gan",
    "<lhs>",
    function()
      require("textcase").current_word("to_constant_case")
    end,
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    "gad",
    function()
      require("textcase").current_word("to_dot_case")
    end,
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    "ga,",
    function()
      require("textcase").current_word("to_comma_case")
    end,
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    "gaa",
    function()
      require("textcase").current_word("to_phrase_case")
    end,
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    "gac",
    function()
      require("textcase").current_word("to_camel_case")
    end,
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    "gap",
    function()
      require("textcase").current_word("to_pascal_case")
    end,
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    "gat",
    function()
      require("textcase").current_word("to_title_case")
    end,
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    "gaf",
    function()
      require("textcase").current_word("to_path_case")
    end,
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
  -- NOTE: textcase lsp_rename
  {
    "gaU",
    function()
      require("textcase").lsp_rename("to_upper_case")
    end,
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    "gaL",
    function()
      require("textcase").lsp_rename("to_lower_case")
    end,
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    "gaS",
    function()
      require("textcase").lsp_rename("to_snake_case")
    end,
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    "gaD",
    function()
      require("textcase").lsp_rename("to_dash_case")
    end,
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    "gaN",
    function()
      require("textcase").lsp_rename("to_constant_case")
    end,
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    "gaD",
    function()
      require("textcase").lsp_rename("to_dot_case")
    end,
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    "ga,",
    function()
      require("textcase").lsp_rename("to_comma_case")
    end,
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    "gaA",
    function()
      require("textcase").lsp_rename("to_phrase_case")
    end,
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    "gaC",
    function()
      require("textcase").lsp_rename("to_camel_case")
    end,
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    "gaP",
    function()
      require("textcase").lsp_rename("to_pascal_case")
    end,
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    "gaT",
    function()
      require("textcase").lsp_rename("to_title_case")
    end,
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    "gaF",
    function()
      require("textcase").lsp_rename("to_path_case")
    end,
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
  -- NOTE: textcase operator
  {
    "geu",
    function()
      require("textcase").operator("to_upper_case")
    end,
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    "gel",
    function()
      require("textcase").operator("to_lower_case")
    end,
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    "ges",
    function()
      require("textcase").operator("to_snake_case")
    end,
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    "ged",
    function()
      require("textcase").operator("to_dash_case")
    end,
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    "gen",
    function()
      require("textcase").operator("to_constant_case")
    end,
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    "ged",
    function()
      require("textcase").operator("to_dot_case")
    end,
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    "ge,",
    function()
      require("textcase").operator("to_comma_case")
    end,
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    "gea",
    function()
      require("textcase").operator("to_phrase_case")
    end,
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    "gec",
    function()
      require("textcase").operator("to_camel_case")
    end,
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    "gep",
    function()
      require("textcase").operator("to_pascal_case")
    end,
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    "get",
    function()
      require("textcase").operator("to_title_case")
    end,
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
  {
    "gef",
    function()
      require("textcase").operator("to_path_case")
    end,
    mode = "n",
    desc = "",
    { noremap = true, silent = true },
  },
}

return keys
