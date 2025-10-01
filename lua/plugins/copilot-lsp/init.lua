---@type LazySpec
local spec = {
  "copilotlsp-nvim/copilot-lsp",
  --lazy = false,
  --event = "VeryLazy",
  init = function()
    local cln = require("copilot-lsp.nes")

    vim.g.copilot_nes_debounce = 500
    vim.lsp.enable("copilot_ls")
    vim.keymap.set("n", "<tab>", function()
      local bufnr = vim.api.nvim_get_current_buf()
      local state = vim.b[bufnr].nes_state
      if state then
        -- Try to jump to the start of the suggestion edit.
        -- If already at the start, then apply the pending suggestion and jump to the end of the edit.
        local _ = cln.walk_cursor_start_edit() or (cln.apply_pending_nes() and cln.walk_cursor_end_edit())
        return nil
      else
        -- Resolving the terminal's inability to distinguish between `TAB` and `<C-i>` in normal mode
        return "<C-i>"
      end
    end, { desc = "Accept Copilot NES suggestion", expr = true })
    vim.keymap.set("n", "<esc>", function()
      if not cln.clear() then
        -- fallback to other functionality
      end
    end, { desc = "Clear Copilot suggestion or fallback" })
  end,
  config = function()
    require("copilot-lsp").setup(require("plugins.copilot-lsp.opts"))
  end,
  cond = false,
  enabled = false,
}

return spec
