---@type LazyKeysSpec[]
local keys = {
  {
    "<leader>yt",
    function()
      require("meow.yarn").open_tree("type_hierarchy", "supertypes")
    end,
    mode = "n",
    desc = "Yarn: Type Hierarchy (Super)",
    { silent = true },
  },
  {
    "<leader>yT",
    function()
      require("meow.yarn").open_tree("type_hierarchy", "subtypes")
    end,
    mode = "n",
    desc = "Yarn: Type Hierarchy (Sub)",
    { silent = true },
  },
  {
    "<leader>yc",
    function()
      require("meow.yarn").open_tree("call_hierarchy", "callers")
    end,
    mode = "n",
    desc = "Yarn: Call Hierarchy (Callers)",
    { silent = true },
  },
  {
    "<leader>yC",
    function()
      require("meow.yarn").open_tree("call_hierarchy", "callees")
    end,
    mode = "n",
    desc = "Yarn: Call Hierarchy (Callees)",
    { silent = true },
  },
}

return keys
