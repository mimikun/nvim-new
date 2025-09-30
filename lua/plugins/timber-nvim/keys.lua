---@type LazyKeysSpec[]
local keys = {
  {
    "glj",
    function()
      require("timber.actions").insert_log({
        position = "below",
      })
    end,
    mode = { "n", "v" },
    { noremap = true, silent = true, desc = "Insert log statement below" },
  },
  {
    "glk",
    function()
      require("timber.actions").insert_log({
        position = "above",
      })
    end,
    mode = { "n", "v" },
    { noremap = true, silent = true, desc = "Insert log statement above" },
  },
  {
    "glo",
    function()
      require("timber.actions").insert_log({
        template = "plain",
        position = "below",
      })
    end,
    mode = "n",
    { noremap = true, silent = true, desc = "Insert log plain statement below" },
  },
  {
    "gl<S-o>",
    function()
      require("timber.actions").insert_log({
        template = "plain",
        position = "above",
      })
    end,
    mode = "n",
    { noremap = true, silent = true, desc = "Insert log plain statement above" },
  },
  {
    "glb",
    function()
      require("timber.actions").insert_batch_log()
    end,
    mode = "n",
    { noremap = true, silent = true, desc = "" },
  },
  {
    "glb",
    function()
      require("timber.actions").insert_batch_log({ auto_add = true })
    end,
    mode = "v",
    { noremap = true, silent = true, desc = "Insert batch log statement below" },
  },
  {
    "gla",
    function()
      require("timber.actions").add_log_targets_to_batch()
    end,
    mode = { "n", "v" },
    { noremap = true, silent = true, desc = "Add log targets to batch" },
  },
  {
    "g<S-l>j",
    function()
      return require("timber.actions").insert_log({
        position = "below",
        operator = true,
      })
    end,
    mode = "n",
    { expr = true, noremap = true, silent = true, desc = "Insert log statement below operator" },
  },
  {
    "g<S-l>k",
    function()
      return require("timber.actions").insert_log({
        position = "above",
        operator = true,
      })
    end,
    mode = "n",
    { expr = true, noremap = true, silent = true, desc = "Insert log statement above operator" },
  },
  {
    "g<S-l>b",
    function()
      return require("timber.actions").insert_batch_log({
        operator = true,
      })
    end,
    mode = "n",
    { expr = true, noremap = true, silent = true, desc = "Insert batch log statement below operator" },
  },
  {
    "g<S-l>a",
    function()
      return require("timber.actions").insert_batch_log({
        operator = true,
      })
    end,
    mode = "n",
    { expr = true, noremap = true, silent = true, desc = "Add log targets to batch operator" },
  },
}

--return keys
