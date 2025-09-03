---@type table
local ftMap = {
  vim = "indent",
  python = { "indent" },
  git = "",
}

---@type UfoConfig
local opts = {
  provider_selector = function(bufnr, filetype, buftype)
    return ftMap[filetype]
  end,
  close_fold_kinds_for_ft = {
    default = { "imports", "comment" },
    json = { "array" },
    c = { "comment", "region" },
  },
  close_fold_current_line_for_ft = {
    default = true,
    c = false,
  },
  enable_get_fold_virt_text = false,
  preview = {
    win_config = {
      border = "rounded",
      winblend = 12,
    },
  },
}

return opts
