---@type conduit.Opts
local opts = {
  ---@type string
  file_prefix = "@",
  ---@type snacks.input.Opts
  input = {
    prompt = "Prompt conduit: ",
    icon = "󰊠 ",
    expand = true,
    win = {
      title_pos = "left",
      relative = "cursor",
      height = 1,
      row = -3,
      col = 0,
    },
  },
}

return opts
