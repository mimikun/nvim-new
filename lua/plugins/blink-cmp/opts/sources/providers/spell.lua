---@module "blink-cmp-spell"
---@type blink-cmp-spell.Source
local opts = {
  max_entries = 3,
  preselect_current_word = true,
  keep_all_entries = false,
  use_cmp_spell_sorting = false,
  enable_in_context = function()
    local curpos = vim.api.nvim_win_get_cursor(0)
    local captures = vim.treesitter.get_captures_at_pos(0, curpos[1] - 1, curpos[2] - 1)
    local in_spell_capture = false
    for _, cap in ipairs(captures) do
      if cap.capture == "spell" then
        in_spell_capture = true
      elseif cap.capture == "nospell" then
        return false
      end
    end
    return in_spell_capture
  end,
}

---@module 'blink.cmp'
---@type blink.cmp.SourceProviderConfig
local spell = {
  name = "Spell",
  enabled = true,
  module = "blink-cmp-spell",
  opts = opts,
}

return spell
