---@type CommentConfig
local opts = {
  ---@type boolean | fun():boolean
  padding = true,
  ---@type boolean
  sticky = true,
  ---@type string | fun():string
  ignore = "^$",
  ---@type Toggler
  toggler = {
    line = "<leader>cc",
    block = "<leader>bc",
  },
  ---@type Opleader
  opleader = {
    line = "<leader>c",
    block = "<leader>b",
  },
  ---@type ExtraMapping
  extra = {
    above = "<leader>cO",
    below = "<leader>co",
    eol = "<leader>cA",
  },
  ---@type Mappings | false
  mappings = {
    basic = true,
    extra = true,
  },
}

return opts
