local cf = function(testCurrentFunction)
  local cb = function(path, index)
    if path then
      -- `xdg-open|open` command performs the same function as double-clicking on the file.
      -- change from `xdg-open` to `open` on MacOSx
      vim.cmd(':silent exec "!xdg-open file://' .. path .. "\\\\#file" .. index .. '"')
    end
  end

  if testCurrentFunction then
    require("nvim-goc").CoverageFunc(nil, cb, 0)
  else
    require("nvim-goc").Coverage(nil, cb)
  end
end

---@type LazyKeysSpec[]
local keys = {
  {
    "<Leader>gcf",
    function()
      require("nvim-goc").Coverage({
        --"-race",
        --"-count=1",
      })
    end,
    mode = "n",
    { noremap = true, silent = true, desc = "run for the whole File" },
  },
  {
    "<Leader>gct",
    function()
      require("nvim-goc").CoverageFunc({
        --"-race",
        --"-count=1",
      })
    end,
    mode = "n",
    { noremap = true, silent = true, desc = "run only for a specific Test unit" },
  },
  {
    "<Leader>gcc",
    function()
      require("nvim-goc").ClearCoverage()
    end,
    mode = "n",
    { noremap = true, silent = true, desc = "clear coverage highlights" },
  },
  {
    "]a",
    function()
      require("nvim-goc").Alternate()
    end,
    mode = "n",
    { noremap = true, silent = true, desc = "" },
  },
  {
    "[a",
    function()
      require("nvim-goc").AlternateSplit()
    end,
    mode = "n",
    { noremap = true, silent = true, desc = "set verticalSplit=true for vertical" },
  },
  {
    "<Leader>gcb",
    function()
      cf()
    end,
    mode = "n",
    { noremap = true, silent = true, desc = "" },
  },
}

return keys
