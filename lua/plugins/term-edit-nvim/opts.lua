---@type table
local prompt_ends = {
  bash = "%$ ",
  zsh = "%$ ",
  powershell = "> ",
  fish = "> ",
  doscmd = ">",
}

---@type TermEditOpts
local opts = {
  ---@type string|string[]
  prompt_end = prompt_ends.fish,
  ---@field feedkeys_delay integer
  feedkeys_delay = 10,
  ---@type function
  use_up_down_arrows = function()
    local line = vim.fn.getline(vim.fn.line("."))
    if line:find("]:", 1, true) or line:find("...:", 1, true) then
      return true
    else
      return false
    end
  end,
  ---@type string
  default_reg = '"',
}

return opts
