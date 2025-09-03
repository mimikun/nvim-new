---@type LazyKeysSpec[]
local keys = {
  {
    "zR",
    function()
      require("ufo").openAllFolds()
    end,
    mode = "n",
  },
  {
    "zM",
    function()
      require("ufo").closeAllFolds()
    end,
    mode = "n",
  },
  {
    "zr",
    function()
      require("ufo").openFoldsExceptKinds()
    end,
    mode = "n",
  },
  {
    "zm",
    function()
      require("ufo").closeFoldsWith()
    end,
    mode = "n",
  },
  --[[
  {
    "K",
    function()
      local winid = require("ufo").peekFoldedLinesUnderCursor()
      if not winid then
        vim.lsp.buf.hover()
      end
    end,
    mode = "n",
  },
  ]]
}

return keys
