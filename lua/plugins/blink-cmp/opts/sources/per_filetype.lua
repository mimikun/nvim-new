---@type table<string, blink.cmp.SourceListPerFiletype>
local per_filetype = {
  sql = {
    inherit_defaults = true,
    "cmp_dbee",
  },
  css = {
    inherit_defaults = true,
    "css_vars",
  },
  scss = {
    inherit_defaults = true,
    "css_vars",
  },
  less = {
    inherit_defaults = true,
    "css_vars",
  },
  kanban = {
    inherit_defaults = true,
    "kanban",
  },
  lua = {
    inherit_defaults = true,
    "lazydev",
  },
  markdown = {
    inherit_defaults = true,
    "git",
    "thesaurus",
    "emoji",
    "nerdfont",
  },
  gitcommit = {
    inherit_defaults = true,
    "git",
    "conventional_commits",
  },
  octo = {
    inherit_defaults = true,
    "git",
  },
  latex = {
    inherit_defaults = true,
    "latex",
  },
  json = {
    inherit_defaults = true,
    "npm",
  },
  sshconfig = {
    inherit_defaults = true,
    "sshconfig",
  },
  text = {
    inherit_defaults = true,
    "words_dictionary",
  },
  --org = { "orgmode" },
  -- NOTE: blink-compat sources
  --["dap-repl"] = { "dap" },
  --dapui_watches = { "dap" },
  --dapui_hover = { "dap" },
  --go = { "go_deep" },
}

return per_filetype
