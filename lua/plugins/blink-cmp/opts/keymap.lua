local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

---@module 'blink.cmp'
---@type blink.cmp.KeymapConfig
local keymap = {
  preset = "none",
  ["<C-e>"] = { "cancel", "hide", "fallback" },
  ["<C-d>"] = { "scroll_documentation_up", "fallback" },
  ["<C-f>"] = { "scroll_documentation_down", "fallback" },
  ["<C-n>"] = { "select_next", "fallback_to_mappings" },
  ["<C-p>"] = { "select_prev", "fallback_to_mappings" },
  ["<C-Space>"] = { "show", "show_documentation", "hide_documentation" },
  ["<CR>"] = { "select_and_accept", "fallback" },

  ["<Tab>"] = {
    function(cmp)
      if cmp.is_visible() then
        return cmp.select_next()
      end
    end,
    "snippet_forward",
    function(cmp)
      if has_words_before() then
        return cmp.accept()
      end
    end,
    "fallback",
    --"snippet_forward",
    ---- NOTE: sidekick.nvim
    --function() -- sidekick next edit suggestion
    --  return require("sidekick").nes_jump_or_apply()
    --end,
    --function() -- if you are using Neovim's native inline completions
    --  return vim.lsp.inline_completion.get()
    --end,
    ---- NOTE: copilot-lsp.nes
    --function(cmp)
    --  local cln = require("copilot-lsp.nes")
    --  if vim.b[vim.api.nvim_get_current_buf()].nes_state then
    --    cmp.hide()
    --    return (cln.apply_pending_nes() and cln.walk_cursor_end_edit())
    --  end
    --  if cmp.snippet_active() then
    --    return cmp.accept()
    --  else
    --    return cmp.select_and_accept()
    --  end
    --end,
  },
  ["<S-Tab>"] = {
    function(cmp)
      if cmp.is_visible() then
        return cmp.select_prev()
      end
    end,
    "snippet_backward",
    "fallback",
  },
}

return keymap

--[[
It can also be combined with [fang2hou/blink-copilot](https://github.com/fang2hou/blink-copilot) to get inline completions.
Just add the completion source to your Blink configuration and it will integrate
]]
