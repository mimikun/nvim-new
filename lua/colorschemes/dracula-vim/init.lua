---@type LazySpec
local spec = {
  "dracula/vim",
  name = "dracula",
  --lazy = false,
  config = function()
    -- In the following section, `1` signifies `on` and `0` signifies `off`.
    vim.g.dracula_bold = 1
    vim.g.dracula_italic = 1
    vim.g.dracula_strikethrough = 1
    vim.g.dracula_underline = 1
    vim.g.dracula_undercurl = 1
    vim.g.dracula_full_special_attrs_support = 1
    vim.g.dracula_high_contrast_diff = 1
    vim.g.dracula_inverse = 1
    vim.g.dracula_colorterm = 1
  end,
  --cond = false,
  --enabled = false,
}

return spec
