--local settings = require("config.settings")
local is_home = false

---@module 'blink.cmp'
---@type table<string, blink.cmp.SourceProviderConfig>
local providers = {
  -- NOTE: built-in providers
  lsp = require("plugins.blink-cmp.opts.sources.providers.lsp"),
  path = require("plugins.blink-cmp.opts.sources.providers.path"),
  snippets = require("plugins.blink-cmp.opts.sources.providers.snippets"),
  buffer = require("plugins.blink-cmp.opts.sources.providers.buffer"),
  cmdline = require("plugins.blink-cmp.opts.sources.providers.cmdline"),
  omni = require("plugins.blink-cmp.opts.sources.providers.omni"),
  --term = require("plugins.blink-cmp.opts.sources.providers.term"),
  -- NOTE: community-sources providers
  ecolog = require("plugins.blink-cmp.opts.sources.providers.ecolog"),
  lazydev = require("plugins.blink-cmp.opts.sources.providers.lazydev"),
  kanban = require("plugins.blink-cmp.opts.sources.providers.kanban"),
  css_vars = require("plugins.blink-cmp.opts.sources.providers.css_vars"),
  emoji = require("plugins.blink-cmp.opts.sources.providers.emoji"),
  nerdfont = require("plugins.blink-cmp.opts.sources.providers.nerdfont"),
  yank = require("plugins.blink-cmp.opts.sources.providers.yank"),
  dictionary = require("plugins.blink-cmp.opts.sources.providers.dictionary"),
  spell = require("plugins.blink-cmp.opts.sources.providers.spell"),
  conventional_commits = require("plugins.blink-cmp.opts.sources.providers.conventional-commits"),
  git = require("plugins.blink-cmp.opts.sources.providers.git"),
  ripgrep = require("plugins.blink-cmp.opts.sources.providers.ripgrep"),
  tmux = require("plugins.blink-cmp.opts.sources.providers.tmux"),
  wezterm = require("plugins.blink-cmp.opts.sources.providers.wezterm"),
  latex = require("plugins.blink-cmp.opts.sources.providers.latex"),
  npm = require("plugins.blink-cmp.opts.sources.providers.npm"),
  sshconfig = require("plugins.blink-cmp.opts.sources.providers.sshconfig"),
  words_dictionary = require("plugins.blink-cmp.opts.sources.providers.words_dictionary"),
  thesaurus = require("plugins.blink-cmp.opts.sources.providers.thesaurus"),
  -- NOTE: using blink.compat providers
  cmp_dbee = require("plugins.blink-cmp.opts.sources.providers.dbee"),
}

-- NOTE: llm features providers
--local providers_avante = { avante = require("plugins.blink-cmp.opts.sources.providers.avante") }
--local providers_copilot = { copilot = require("plugins.blink-cmp.opts.sources.providers.copilot") }

if is_home then
  --providers = vim.tbl_extend("force", providers, providers_copilot)
  --providers = vim.tbl_extend("force", providers, providers_avante)
end

--if settings.use_github_copilot then
--  providers = vim.tbl_extend("force", providers, providers_copilot)
--end
--
--if settings.use_avante then
--  providers = vim.tbl_extend("force", providers, providers_avante)
--end

return providers
