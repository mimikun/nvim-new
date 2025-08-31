---@type LazySpec
local spec = {
  "sainnhe/sonokai",
  --lazy = false,
  config = function()
    ---@type string 'default' | 'atlantis' | 'andromeda' | 'shusia' | 'maia' | 'espresso'
    vim.g.sonokai_style = "default"
    vim.g.sonokai_disable_italic_comment = true
    vim.g.sonokai_enable_italic = false
    ---@type string 'auto' | 'red' | 'orange' | 'yellow' | 'green' | 'blue' | 'purple'
    vim.g.sonokai_cursor = "auto"
    -- To use transparent background, set this option to 1.
    -- If you want more ui components to be transparent (for example, status line background), set this option to 2.
    ---@type number 0 | 1 | 2
    vim.g.sonokai_transparent_background = 0
    vim.g.sonokai_dim_inactive_windows = true
    ---@type string 'blue' | 'green' | 'red'
    vim.g.sonokai_menu_selection_background = "blue"
    ---@type string 'none' | 'colored'
    vim.g.sonokai_spell_foreground = "none"
    vim.g.sonokai_show_eob = false
    ---@type string 'bright' | 'dim' | 'none'
    vim.g.sonokai_float_style = "bright"
    vim.g.sonokai_diagnostic_text_highlight = true
    vim.g.sonokai_diagnostic_line_highlight = true
    ---@type string 'grey' | 'colored' | 'highlighted'
    vim.g.sonokai_diagnostic_virtual_text = "grey"
    ---@type string 'grey background' | 'high contrast background' | 'bold' | 'underline' | 'italic'
    vim.g.sonokai_current_word = "grey background"
    ---@type string 'none' | 'dimmed'
    vim.g.sonokai_inlay_hints_background = "none"
    vim.g.sonokai_disable_terminal_colors = false
    vim.g.sonokai_lightline_disable_bold = false
    vim.g.sonokai_better_performance = true
  end,
  priority = 1000,
  --cond = false,
  --enabled = false,
}

return spec
