---@type I.GGSymbols
local symbols = {
  plain = {
    merge_commit = "M",
    commit = "*",
    merge_commit_end = "M",
    commit_end = "*",
    GVER = "│",
    GHOR = "─",
    GCLD = "╮",
    GCRD = "╭",
    GCLU = "╯",
    GCRU = "╰",
    GLRU = "┴",
    GLRD = "┬",
    GLUD = "┤",
    GRUD = "├",
    GFORKU = "┼",
    GFORKD = "┼",
    GRUDCD = "├",
    GRUDCU = "├",
    GLUDCD = "┤",
    GLUDCU = "┤",
    GLRDCL = "┬",
    GLRDCR = "┬",
    GLRUCL = "┴",
    GLRUCR = "┴",
  },
  rich = {
    merge_commit = "",
    commit = "",
    merge_commit_end = "",
    commit_end = "",
    GVER = "",
    GHOR = "",
    GCLD = "",
    GCRD = "╭",
    GCLU = "",
    GCRU = "",
    GLRU = "",
    GLRD = "",
    GLUD = "",
    GRUD = "",
    GFORKU = "",
    GFORKD = "",
    GRUDCD = "",
    GRUDCU = "",
    GLUDCD = "",
    GLUDCU = "",
    GLRDCL = "",
    GLRDCR = "",
    GLRUCL = "",
    GLRUCR = "",
  },
}

---@type I.GGConfig
local opts = {
  symbols = symbols.rich,
  ---@type I.GGFormat
  format = {
    ---@type string
    timestamp = "%H:%M:%S %Y-%m-%d",
    ---@alias I.GGVarName "hash" | "timestamp" | "author" | "branch_name" | "tag" | "message"
    ---@type I.GGVarName[]
    fields = { "hash", "timestamp", "author", "branch_name", "tag" },
  },
  ---@type I.Hooks
  hooks = {
    -- Check diff of a commit
    on_select_commit = function(commit)
      vim.notify("DiffviewOpen " .. commit.hash .. "^!")
      vim.cmd(":DiffviewOpen " .. commit.hash .. "^!")
    end,
    -- Check diff from commit a -> commit b
    on_select_range_commit = function(from, to)
      vim.notify("DiffviewOpen " .. from.hash .. "~1.." .. to.hash)
      vim.cmd(":DiffviewOpen " .. from.hash .. "~1.." .. to.hash)
    end,
  },
}

return opts
