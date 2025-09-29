---@type LazyKeysSpec[]
local keys = {
  {
    "<tab>",
    function()
      -- if there is a next edit, jump to it, otherwise apply it if any
      if require("sidekick").nes_jump_or_apply() then
        -- jumped or applied
        return
      end

      -- if you are using Neovim's native inline completions
      if vim.lsp.inline_completion.get() then
        return
      end

      -- any other things (like snippets) you want to do on <tab> go here.

      -- fall back to normal tab
      return "<tab>"
    end,
    expr = true,
    mode = { "i", "n" },
    desc = "Goto/Apply Next Edit Suggestion",
    { silent = true },
  },
  {
    "<leader>aa",
    function()
      require("sidekick.cli").toggle({ focus = true })
    end,
    mode = { "n", "v" },
    desc = "Sidekick Toggle CLI",
    { silent = true },
  },
  {
    "<leader>ac",
    function()
      require("sidekick.cli").toggle({ name = "claude", focus = true })
    end,
    mode = { "n", "v" },
    desc = "Sidekick Claude Toggle",
    { silent = true },
  },
  {
    "<leader>ag",
    function()
      require("sidekick.cli").toggle({ name = "grok", focus = true })
    end,
    mode = { "n", "v" },
    desc = "Sidekick Grok Toggle",
    { silent = true },
  },
  {
    "<leader>ap",
    function()
      require("sidekick.cli").select_prompt()
    end,
    mode = { "n", "v" },
    desc = "Sidekick Ask Prompt or Prompt Picker",
    { silent = true },
  },
}

return keys
