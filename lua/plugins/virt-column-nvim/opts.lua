---@type virtcolumn.config
local opts = {
  char = "┃",
  virtcolumn = "",
  exclude = {
    filetypes = {
      "lspinfo",
      "packer",
      "checkhealth",
      "help",
      "man",
      "TelescopePrompt",
      "TelescopeResults",
    },
    buftypes = {
      "nofile",
      "quickfix",
      "terminal",
      "prompt",
    },
  },
}

return opts
